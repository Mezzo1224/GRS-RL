-- Der Code stammt von thisdp, dem Macher von DGS - Ich habe seine Erlaubnis diesen zu benutzen.
--Check whether you enable/disable dgs update system..
--If you don't trust dgs.. Please Disable It In "config.txt"

local check
if fileExists("version.cfg") then
	check = fileOpen("version.cfg")
else
	check = fileCreate("version.cfg")
end
local allstr = fileRead(check,fileGetSize(check))
setElementData(resourceRoot,"Version",allstr)
fileClose(check)



local _fetchRemote = fetchRemote
function fetchRemote(...)
	if hasObjectPermissionTo(getThisResource(),"function.fetchRemote",true) then
		return _fetchRemote(...)
	else
		outputDebugString("[GRS-Updater] GRS hat keine ACL Rechte.'",2)
	end
	return false
end

Version = tonumber(allstr) or 0
RemoteVersion = 0
ManualUpdate = false
updateTimer = false
updatePeriodTimer = false
function checkUpdate()
	outputDebugString("[GRS-Updater]Connecting to github...")
	fetchRemote("https://raw.githubusercontent.com/Mezzo1224/GRS-RL/master/reallife_server/version.cfg",function(data,err)
		if err == 0 then
			RemoteVersion = tonumber(data)
			if not ManualUpdate then
				if RemoteVersion > Version then
					outputDebugString("[GRS-Updater] Versions-Info: [Remote:"..data.." Current:"..allstr.."].")
					outputDebugString("[GRS-Updater] Updaten? /updategrs ")
					outputDebugString("[GRS-Updater] Achtung: Eigene Änderungen werden ggf. gelöscht! ")
					if isTimer(updateTimer) then killTimer(updateTimer) end
					updateTimer = setTimer(function()
						if RemoteVersion > Version then
							outputDebugString("[GRS-Updater] Versions-Info: [Remote:"..RemoteVersion.." Current:"..allstr.."].")
							outputDebugString("[GRS-Updater] Updaten? /updategrs ")
							outputDebugString("[GRS-Updater] Achtung: Eigene Änderungen werden ggf. gelöscht! ")
						else
							killTimer(updateTimer)
						end
					end,dgsConfig.updateCheckNoticeInterval*60000,0)
				else
					outputDebugString("[GRS-Updater] Version ("..allstr..") ist die aktuellste")
				end
			else
				startUpdate()
			end
		else
			outputDebugString("[GRS-Updater] Update nicht möglich ("..err..")")
		end
	end)
end


	
addCommandHandler("updategrs",function(player)
	local account = getPlayerAccount(player)
	local accName = getAccountName(account)
	if isAdminLevel(player, 8) then
		outputDebugString("[GRS-Updater] "..getPlayerName(player).." Update die GRS Version")
		outputChatBox("[GRS-Updater] GRS wird geupdated...",root,0,255,0)
		if RemoteVersion > Version then
			startUpdate()
		else
			ManualUpdate = true
			checkUpdate()
		end
	else
		triggerClientEvent ( player, "infobox_start", getRootElement(), "\nDu bist\nnicht befugt!", 7500, 125, 0, 0 )	
	end
end)

function startUpdate()
	ManualUpdate = false
	setTimer(function()
		outputDebugString("[GRS-Updater] Daten werden abgefragt...")
		fetchRemote("https://raw.githubusercontent.com/Mezzo1224/GRS-RL/master/reallife_server/meta.xml",function(data,err)
			if err == 0 then
				outputDebugString("[GRS-Updater]Update Data Acquired")
				if fileExists("updated/meta.xml") then
					fileDelete("updated/meta.xml")
				end
				local meta = fileCreate("updated/meta.xml")
				fileWrite(meta,data)
				fileClose(meta)
				outputDebugString("[GRS-Updater] Daten werden bearbeitet..")
				getGitHubTree()
			else
				outputDebugString("[GRS-Updater] Abfrage nicht möglich (ERROR:"..err..")",2)
			end
		end)
	end,50,1)
end

preUpdate = {}
fileHash = {}
preUpdateCount = 0
UpdateCount = 0
FetchCount = 0
preFetch = 0
folderGetting = {}
function getGitHubTree(path,nextPath)
	nextPath = nextPath or ""
	fetchRemote(path or "https://api.github.com/repos/Mezzo1224/GRS-RL/git/trees/feb2dc19ee0225f885bc93f7612a93426c390549",function(data,err)
		if err == 0 then
			local theTable = fromJSON(data)
			folderGetting[theTable.sha] = nil
			for k,v in pairs(theTable.tree) do
				local thePath = nextPath..(v.path)
					if v.mode == "040000" then
						folderGetting[v.sha] = true
						getGitHubTree(v.url,thePath.."/")
					else
						fileHash[thePath] = v.sha
					end
				
			end
			if not next(folderGetting) then
				checkFiles()
			end
		else
			outputDebugString("[GRS-Updater] Du hast zu oft versucht zu updaten, versuch es in 60 Minuten wieder",2)
		end
	end)
end

function checkFiles()
	local xml = xmlLoadFile("updated/meta.xml")
	for k,v in pairs(xmlNodeGetChildren(xml)) do
		if xmlNodeGetName(v) == "script"  then
			local path = xmlNodeGetAttribute(v,"src")
			if not string.find(path,"styleMapper.lua") and path ~= "meta.xml" and path ~= "settings/lua" and path ~= "mysql/mysql_start.lua" then
				local sha = ""
				if fileExists(path) then
					local file = fileOpen(path)
					local size = fileGetSize(file)
					local text = fileRead(file,size)
					fileClose(file)
					sha = hash("sha1","blob " .. size .. "\0" ..text)
				end
				if sha ~= fileHash[path] then
					outputDebugString("[GRS-Updater] Update: ("..path..")")
					table.insert(preUpdate,path)
				end
			end
		end
	end
	DownloadFiles()
end

function DownloadFiles()
	UpdateCount = UpdateCount + 1
	if not preUpdate[UpdateCount] then
		DownloadFinish()
		return
	end
	outputDebugString("[GRS-Updater] Requesting ("..UpdateCount.."/"..(#preUpdate or "Unknown").."): "..tostring(preUpdate[UpdateCount]).."")
	fetchRemote("https://raw.githubusercontent.com/Mezzo1224/GRS-RL/master/reallife_server/"..preUpdate[UpdateCount],function(data,err,path)
		if err == 0 then
			local size = 0
			if fileExists(path) then
				local file = fileOpen(path)
				size = fileGetSize(file)
				fileClose(file)
				fileDelete(path)
			end
			local file = fileCreate(path)
			fileWrite(file,data)
			local newsize = fileGetSize(file)
			fileClose(file)
			outputDebugString("[GRS-Updater] Datei ("..UpdateCount.."/"..#preUpdate.."): "..path.." [ "..size.."B -> "..newsize.."B ]")
		else
			outputDebugString("[GRS-Updater]Download fehlgeschlagen: "..path.." ("..err..")!",2)
		end
		if preUpdate[UpdateCount+1] then
			DownloadFiles()
		else
			DownloadFinish()
		end
	end,"",false,preUpdate[UpdateCount])
end

function DownloadFinish()
	outputDebugString("[GRS-Updater] Versionsnummer wird geändert")
	if fileExists("version.cfg") then
		fileDelete("version.cfg")
	end
	local file = fileCreate("version.cfg")
	fileWrite(file,tostring(RemoteVersion))
	fileClose(file)
	if fileExists("meta.xml") then
		backupStyleMapper()
		fileDelete("meta.xml")
	end
	recoverStyleMapper()
	outputDebugString("[GRS-Updater]Update fertiggestellt(Updated "..#preUpdate.." Files)")
	outputDebugString("[GRS-Updater] Starte GRS neu")
	outputChatBox("[GRS-Updater]Update Complete (Updated "..#preUpdate.." Files)",root,0,255,0)
	preUpdate = {}
	preUpdateCount = 0
	UpdateCount = 0
	FetchCount = 0
	preFetch = 0
end

addCommandHandler("grsver",function(pla,cmd)
	local vsdd
	if fileExists("version.cfg") then
		local file = fileOpen("version.cfg")
		local vscd = fileRead(file,fileGetSize(file))
		fileClose(file)
		vsdd = tonumber(vscd)
		if vsdd then
			outputDebugString("[GRS-Updater]Version: "..vsdd,3)
		else
			outputDebugString("[GRS-Updater][GRS-Updater] Script ist beschädigt, gebe /updategrs ein.",1)
		end
	else
		outputDebugString("[GRS-Updater][GRS-Updater] Script ist beschädigt, gebe /updategrs ein.",1)
	end
	if getPlayerName(pla) ~= "Console" then
		if vsdd then
			outputChatBox("[GRS-Updater]Version: "..vsdd,pla,0,255,0)
		else
			outputChatBox("[GRS-Updater] Script ist beschädigt, gebe /updategrs ein.",pla,255,0,0)
		end
	end
end)


function backupStyleMapper()
	
end
function recoverStyleMapper()

end