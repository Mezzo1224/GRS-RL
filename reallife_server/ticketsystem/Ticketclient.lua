local x,y = guiGetScreenSize()
local screenW, screenH = guiGetScreenSize()

function drawRec ()
 --dxDrawRectangle(screenW * 0.1789, screenH * 0.2986, screenW * 0.6492, screenH * 0.0097, tocolor(11, 3, 165, 171), false)
end


GUITicketSys = {
    window = {},
    tabpanel = {},
    button = {},
    tab = {},
    gridlist = {}
}

GUITicketSys.window[1] = guiCreateWindow(0.32, 0.27, 0.35, 0.48, "Ticketsystem", true)
--guiCreateStaticImage(0.01, 0.29, 0.98, 0.01, ":reallife_server/images/colors/c_blue.png", true, GUITicketSys.window[1])  
addEventHandler ( "onClientRender", root, drawRec )
guiWindowSetMovable(GUITicketSys.window[1], false)
guiSetAlpha(GUITicketSys.window[1], 1.00)
guiSetVisible(GUITicketSys.window[1], false)

guiWindowSetSizable(GUITicketSys.window[1], false)
guiSetProperty(GUITicketSys.window[1], "CaptionColour", "FFFC6C02")

GUITicketSys.button[1] = guiCreateButton(0.02, 0.83, 0.17, 0.09, "Ticket erstellen", true, GUITicketSys.window[1])
guiSetFont(GUITicketSys.button[1], "default-bold-small")
guiSetProperty(GUITicketSys.button[1], "NormalTextColour", "FFAAAAAA")

GUITicketSys.tabpanel[1] = guiCreateTabPanel(0.01, 0.08, 0.97, 0.73, true, GUITicketSys.window[1])

GUITicketSys.tab["open"] = guiCreateTab("Offene Tickets", GUITicketSys.tabpanel[1])

GUITicketSys.gridlist["open"] = guiCreateGridList(0.01, 0.03, 0.97, 0.95, true,  GUITicketSys.tab["open"])
guiSetProperty(GUITicketSys.gridlist["open"], "SortSettingEnabled", "false")
guiSetProperty(GUITicketSys.gridlist["open"], "ColumnsSizable", "false")
guiSetProperty(GUITicketSys.gridlist["open"], "ColumnsMovable", "false")
local open_id = guiGridListAddColumn(GUITicketSys.gridlist["open"], "ID", 0.2)
local open_owner = guiGridListAddColumn(GUITicketSys.gridlist["open"], "Besitzer", 0.2)
local open_title = guiGridListAddColumn(GUITicketSys.gridlist["open"], "Titel", 0.2)
local open_type = guiGridListAddColumn(GUITicketSys.gridlist["open"], "Typ", 0.2)
local open_state = guiGridListAddColumn(GUITicketSys.gridlist["open"], "Status", 0.2)

GUITicketSys.tab["closed"] = guiCreateTab("Geschlossene Tickets", GUITicketSys.tabpanel[1])
--gLabel[1] = guiCreateLabel(414,354,168,63,"Beantwortete Tickets ( von dir ): \n"..getElementData ( source, "supppoints" ).."",false)
--gLabel[1] = guiCreateLabel(414,354,168,63,"Beantwortete Tickets ( von dir ): \n"..getElementData ( source, "supppoints" ).."",false, GUITicketSys.window[1])
GUITicketSys.gridlist["closed"] = guiCreateGridList(0.01, 0.03, 0.97, 0.95, true,  GUITicketSys.tab["closed"])
guiSetProperty(GUITicketSys.gridlist["closed"], "SortSettingEnabled", "false")
guiSetProperty(GUITicketSys.gridlist["closed"], "ColumnsSizable", "false")
guiSetProperty(GUITicketSys.gridlist["closed"], "ColumnsMovable", "false")
local closed_id = guiGridListAddColumn(GUITicketSys.gridlist["closed"], "ID", 0.2)
local closed_owner = guiGridListAddColumn(GUITicketSys.gridlist["closed"], "Besitzer", 0.2)
local closed_title = guiGridListAddColumn(GUITicketSys.gridlist["closed"], "Titel", 0.2)
local closed_type = guiGridListAddColumn(GUITicketSys.gridlist["closed"], "Typ", 0.2)
local closed_state =  guiGridListAddColumn(GUITicketSys.gridlist["closed"], "Status", 0.2)

GUITicketSys.tab["all"] = guiCreateTab("Alle Tickets", GUITicketSys.tabpanel[1])

GUITicketSys.gridlist["all"] = guiCreateGridList(0.01, 0.03, 0.97, 0.95, true,  GUITicketSys.tab["all"])
guiSetProperty(GUITicketSys.gridlist["all"], "SortSettingEnabled", "false")
guiSetProperty(GUITicketSys.gridlist["all"], "ColumnsSizable", "false")
guiSetProperty(GUITicketSys.gridlist["all"], "ColumnsMovable", "false")
local all_id =  guiGridListAddColumn(GUITicketSys.gridlist["all"], "ID", 0.2)
local all_owner =  guiGridListAddColumn(GUITicketSys.gridlist["all"], "Besitzer", 0.2)
local all_title = guiGridListAddColumn(GUITicketSys.gridlist["all"], "Titel", 0.2)
local all_type = guiGridListAddColumn(GUITicketSys.gridlist["all"], "Typ", 0.2)
local all_state = guiGridListAddColumn(GUITicketSys.gridlist["all"], "Status", 0.2 )




GUITicketSys.button[3] = guiCreateButton(0.21, 0.83, 0.19, 0.09, "Ausgewähltes Ticket \nanzeigen", true, GUITicketSys.window[1])
guiSetFont(GUITicketSys.button[3], "default-bold-small")
guiSetProperty(GUITicketSys.button[3], "NormalTextColour", "FFAAAAAA")


GUITicketSys.button[4] = guiCreateButton(0.41, 0.83, 0.18, 0.09, "Ausgewähltes Ticket \nschliessen", true, GUITicketSys.window[1])
guiSetFont(GUITicketSys.button[4], "default-bold-small")
guiSetProperty(GUITicketSys.button[4], "NormalTextColour", "FFAAAAAA")

GUITicketSys.button[5] = guiCreateButton(0.81, 0.83, 0.19, 0.09, "Aktualisieren", true, GUITicketSys.window[1])
guiSetFont(GUITicketSys.button[5], "default-bold-small")


guiSetProperty(GUITicketSys.button[5], "NormalTextColour", "FF00FF00")
GUITicketSys.button[2] = guiCreateButton(0.96, 0.04, 0.03, 0.04, "X", true, GUITicketSys.window[1])
guiSetFont(GUITicketSys.button[2], "default-bold-small")

guiSetProperty(GUITicketSys.button[2], "NormalTextColour", "FFAAAAAA")    
GUITicketSys.button[7] = guiCreateButton(0.61, 0.83, 0.19, 0.09, "Admins anzeigen", true, GUITicketSys.window[1])
guiSetFont(GUITicketSys.button[7], "default-bold-small")
--guiSetProperty(GUITicketSys.button[7], "NormalTextColour", "00CED1")

GUITicketSys2 = {
    edit = {},
	memo = {},
    button = {},
    window = {},
    label = {},
    radiobutton = {}
}
-- 411,174

 
		
GUITicketSys2.window[1] = guiCreateWindow(0.39, 0.35, 0.22, 0.29, "Ticket erstellen", true)
--guiWindowSetMovable(GUITicketSys2.window[1], false)
guiSetAlpha(GUITicketSys2.window[1], 1.00)
guiSetVisible(GUITicketSys2.window[1], false)
guiWindowSetSizable(GUITicketSys2.window[1], false)
guiSetProperty(GUITicketSys2.window[1], "CaptionColour", "FFFF0000")
GUITicketSys2.label[1] = guiCreateLabel(0.72, 0.08, 0.15, 0.06, "Art:", true, GUITicketSys2.window[1])
reasionGrid = guiCreateGridList(0.72, 0.16, 0.26, 0.81, true, GUITicketSys2.window[1])
guiGridListAddColumn(reasionGrid, "Art", 0.9) 
for i = 1, 2 do
     guiGridListAddRow(reasionGrid)
 end
guiGridListSetItemText(reasionGrid, 0, 1, "Problem", false, false)
guiGridListSetItemText(reasionGrid, 1, 1, "Schnellanfrage", false, false)    
guiSetFont(GUITicketSys2.label[1], "default-bold-small")
guiLabelSetColor(GUITicketSys2.label[1], 255, 0, 0)
GUITicketSys2.label[2] = guiCreateLabel(0.02, 0.07, 0.15, 0.06, "Titel:", true, GUITicketSys2.window[1])
guiSetFont(GUITicketSys2.label[2], "default-bold-small")
guiLabelSetColor(GUITicketSys2.label[2], 255, 0, 0)
GUITicketSys2.edit[1] = guiCreateEdit(0.02, 0.15, 0.68, 0.10, "", true, GUITicketSys2.window[1])
GUITicketSys2.label[3] = guiCreateLabel(0.02, 0.27, 0.15, 0.06, "Text:", true, GUITicketSys2.window[1])
guiSetFont(GUITicketSys2.label[3], "default-bold-small")
guiLabelSetColor(GUITicketSys2.label[3], 255, 0, 0)
GUITicketSys2.memo[1] = guiCreateMemo(0.03, 0.31, 0.67, 0.55, "", true, GUITicketSys2.window[1])
guiSetEnabled(GUITicketSys2.memo[1], false)
guiSetText(GUITicketSys2.memo[1],"!!!BITTE LESEN!!!\nBeachte:\n-Beschwerden werden im Forum abgegeben!\n-Bugs etc. werden im Forum gemeldet\n-Bevor du nach einen Leaderposten fragst, kucke bitte im Forum, ob ueberhaupt Plaetze frei sind!\n\nForum Link: http://reallife_server-mta.de/\nTS IP: projektreallife_server.nitrado.net\n\n Loesche bitte diesen Text, bevor du\ndas Ticket abschickst!")


-- 411,174
GUITicketSys2.button[1] = guiCreateButton(0.37, 0.89, 0.27, 0.08, "Absenden", true, GUITicketSys2.window[1])
guiSetFont(GUITicketSys2.button[1], "default-bold-small")
guiSetProperty(GUITicketSys2.button[1], "NormalTextColour", "FFFF0000")
guiSetEnabled(GUITicketSys2.button[1], false)
GUITicketSys2.button[2] = guiCreateButton(0.91, 0.07, 0.07, 0.06, "X", true, GUITicketSys2.window[1])
guiSetProperty(GUITicketSys2.button[2], "NormalTextColour", "FFFF0000")
guiSetFont(GUITicketSys2.button[2], "default-bold-small")


GUITicketSys3 = {
    label = {},
    edit = {},
    button = {},
    window = {},
    gridlist = {},
    memo = {}
}

GUITicketSys3.window[1] = guiCreateWindow((screenW - 400) / 2, (screenH - 505) / 2, 400, 505, "Ticket (#{ID})", false)
--guiWindowSetMovable(GUITicketSys3.window[1], false)
guiSetAlpha(GUITicketSys3.window[1], 1.00)
guiSetVisible(GUITicketSys3.window[1], false)
guiWindowSetSizable(GUITicketSys3.window[1], false)
guiWindowSetMovable ( GUITicketSys3.window[1], true )
guiSetProperty(GUITicketSys3.window[1], "CaptionColour", "FFFF0000")

GUITicketSys3.label[1] = guiCreateLabel(251,34,25,22, "Art:", false, GUITicketSys3.window[1])
guiSetFont(GUITicketSys3.label[1], "default-bold-small")
guiLabelSetColor(GUITicketSys3.label[1], 255, 0, 0)
-- 251,34,49,22    246,90,144,30
GUITicketSys3.label[2] = guiCreateLabel(249,65,51,19, "Titel:", false, GUITicketSys3.window[1])
guiSetFont(GUITicketSys3.label[2], "default-bold-small")
guiLabelSetColor(GUITicketSys3.label[2], 255, 0, 0)
GUITicketSys3.edit[1] = guiCreateEdit(246,90,144,30, "", false, GUITicketSys3.window[1])
guiEditSetReadOnly(GUITicketSys3.edit[1], true)
GUITicketSys3.label[3] = guiCreateLabel(249,135,53,23, "Text:", false, GUITicketSys3.window[1])
guiSetFont(GUITicketSys3.label[3], "default-bold-small")
guiLabelSetColor(GUITicketSys3.label[3], 255, 0, 0)
GUITicketSys3.button[1] = guiCreateButton(316,436,69,34, "Antworten", false, GUITicketSys3.window[1])
guiSetFont(GUITicketSys3.button[1], "default-bold-small")
guiSetProperty(GUITicketSys3.button[1], "NormalTextColour", "FFFF0000")
GUITicketSys3.button[2] = guiCreateButton(355,483,35,12, "X", false, GUITicketSys3.window[1])
guiSetProperty(GUITicketSys3.button[2], "NormalTextColour", "FFFF0000")
guiSetFont(GUITicketSys3.button[2], "default-bold-small")
GUITicketSys3.memo[1] = guiCreateMemo(244,158,146,267, "", false, GUITicketSys3.window[1])
guiMemoSetReadOnly(GUITicketSys3.memo[1], true)
GUITicketSys3.label[4] = guiCreateLabel(282,34,101,24, "{TYPE}", false, GUITicketSys3.window[1])
GUITicketSys3.gridlist[1] = guiCreateGridList(10,30,227,457, false, GUITicketSys3.window[1])
guiSetProperty(GUITicketSys3.gridlist[1], "SortSettingEnabled", "false")
guiSetProperty(GUITicketSys3.gridlist[1], "ColumnsSizable", "false")
guiSetProperty(GUITicketSys3.gridlist[1], "ColumnsMovable", "false")
antwort_grid_id = guiGridListAddColumn(GUITicketSys3.gridlist[1], "ID", 0.4)
antwort_grid_from = guiGridListAddColumn(GUITicketSys3.gridlist[1], "Von", 0.4)
GUITicketSys3.button[3] = guiCreateButton(243,436,69,33, "Anzeigen", false, GUITicketSys3.window[1])
guiSetFont(GUITicketSys3.button[3], "default-bold-small")
guiSetProperty(GUITicketSys3.button[3], "NormalTextColour", "FFFF0000")


GUITicketSys4 = {
    button = {},
    window = {},
    label = {},
    memo = {}
}
GUITicketSys4.window[1] = guiCreateWindow(x/2-(333/2), y/2-(370/2), 333, 370, "Antwort erstellen | Ticket (#{ID})", false)
--guiWindowSetMovable(GUITicketSys4.window[1], false)
guiSetAlpha(GUITicketSys4.window[1], 1.00)
guiSetVisible(GUITicketSys4.window[1], false)
guiWindowSetSizable(GUITicketSys4.window[1], false)
guiSetProperty(GUITicketSys4.window[1], "CaptionColour", "FFFF0000")

GUITicketSys4.memo[1] = guiCreateMemo(10, 63, 308, 249, "", false, GUITicketSys4.window[1])
GUITicketSys4.button[1] = guiCreateButton(10, 322, 308, 37, "Antworten", false, GUITicketSys4.window[1])
guiSetFont(GUITicketSys4.button[1], "default-bold-small")
guiSetProperty(GUITicketSys4.button[1], "NormalTextColour", "FFFF0000")
GUITicketSys4.button[2] = guiCreateButton(304, 24, 20, 20, "X", false, GUITicketSys4.window[1])
guiSetFont(GUITicketSys4.button[2], "default-bold-small")
guiSetProperty(GUITicketSys4.button[2], "NormalTextColour", "FFFF0000")
GUITicketSys4.label[1] = guiCreateLabel(10, 44, 176, 19, "Antworttext:", false, GUITicketSys4.window[1])
guiSetFont(GUITicketSys4.label[1], "default-bold-small")
guiLabelSetColor(GUITicketSys4.label[1], 255, 0, 0)


GUITicketSys5 = {
    button = {},
    window = {},
    label = {},
    memo = {}
}
GUITicketSys5.window[1] = guiCreateWindow(x/2-(332/2), y/2-(330/2), 332, 330, "Antwort lesen", false)
--guiWindowSetMovable(GUITicketSys5.window[1], false)
guiSetAlpha(GUITicketSys5.window[1], 1.00)
guiSetVisible(GUITicketSys5.window[1], false)
guiWindowSetSizable(GUITicketSys5.window[1], false)
guiSetProperty(GUITicketSys5.window[1], "CaptionColour", "FFFF0000")

GUITicketSys5.memo[1] = guiCreateMemo(10, 63, 308, 249, "", false, GUITicketSys5.window[1])
guiMemoSetReadOnly(GUITicketSys5.memo[1], true)
GUITicketSys5.button[1] = guiCreateButton(304, 24, 19, 20, "X", false, GUITicketSys5.window[1])
guiSetFont(GUITicketSys5.button[1], "default-bold-small")
guiSetProperty(GUITicketSys5.button[1], "NormalTextColour", "FFFF0000")
GUITicketSys5.label[1] = guiCreateLabel(10, 44, 176, 19, "Antwort von {NAME}:", false, GUITicketSys5.window[1])
guiSetFont(GUITicketSys5.label[1], "default-bold-small")
guiLabelSetColor(GUITicketSys5.label[1], 255, 0, 0)


function updateTicketsFunc(id, owner, title, typ, state)	
	local curState
	if state == "open" then
		curState = "offen"
		local open_row = guiGridListAddRow ( GUITicketSys.gridlist["open"] )
		guiGridListSetItemText ( GUITicketSys.gridlist["open"], open_row, open_id , id, false, false )
		guiGridListSetItemText ( GUITicketSys.gridlist["open"], open_row, open_owner , owner, false, false )
		guiGridListSetItemText ( GUITicketSys.gridlist["open"], open_row, open_title , title, false, false )
		guiGridListSetItemText ( GUITicketSys.gridlist["open"], open_row, open_type , typ, false, false )
		guiGridListSetItemText ( GUITicketSys.gridlist["open"], open_row, open_state , curState, false, false )
	end
	if state == "answered" then
		curState = "beantwortet"
		local open_row = guiGridListAddRow ( GUITicketSys.gridlist["open"] )
		guiGridListSetItemText ( GUITicketSys.gridlist["open"], open_row, open_id , id, false, false )
		guiGridListSetItemText ( GUITicketSys.gridlist["open"], open_row, open_owner , owner, false, false )
		guiGridListSetItemText ( GUITicketSys.gridlist["open"], open_row, open_title , title, false, false )
		guiGridListSetItemText ( GUITicketSys.gridlist["open"], open_row, open_type , typ, false, false )
		guiGridListSetItemText ( GUITicketSys.gridlist["open"], open_row, open_state , curState, false, false )
	end
	if state == "closed" then
		curState = "geschlossen"
		local closed_row = guiGridListAddRow ( GUITicketSys.gridlist["closed"] )
		guiGridListSetItemText ( GUITicketSys.gridlist["closed"], closed_row, closed_id , id, false, false )
		guiGridListSetItemText ( GUITicketSys.gridlist["closed"], closed_row, closed_owner , owner, false, false )
		guiGridListSetItemText ( GUITicketSys.gridlist["closed"], closed_row, closed_title , title, false, false )
		guiGridListSetItemText ( GUITicketSys.gridlist["closed"], closed_row, closed_type , typ, false, false )
		guiGridListSetItemText ( GUITicketSys.gridlist["closed"], closed_row, closed_state , curState, false, false )
	end
	local all_row = guiGridListAddRow ( GUITicketSys.gridlist["all"] )
    guiGridListSetItemText ( GUITicketSys.gridlist["all"], all_row, all_id , id, false, false )
	guiGridListSetItemText ( GUITicketSys.gridlist["all"], all_row, all_owner , owner, false, false )
	guiGridListSetItemText ( GUITicketSys.gridlist["all"], all_row, all_title , title, false, false )
	guiGridListSetItemText ( GUITicketSys.gridlist["all"], all_row, all_type , typ, false, false )
	guiGridListSetItemText ( GUITicketSys.gridlist["all"], all_row, all_state , curState, false, false )
end
addEvent ( "updateTickets", true )
addEventHandler ( "updateTickets", getRootElement(), updateTicketsFunc )

local closeCooldown
addCommandHandler("tickets", function ()
	if getElementData ( getLocalPlayer(), "loggedin" ) == 1 then
		if not isTimer(closeCooldown) then
			if not guiGetVisible(GUITicketSys.window[1]) then
			guiSetVisible(GUITicketSys.window[1], true)
			showCursor(true)
			setElementClicked ( true )
			updateFromServer()
			closeCooldown = setTimer(function() end, 5000, 1)
			guiSetInputEnabled ( false )
			end
		else
		outputChatBox("#FF0000Du musst 5 Sekunden warten, bevor du das Ticketsystem erneut öffnen kannst.", 255, 0, 0, true)
		end
	end
end)


addCommandHandler("kontakt", function ()
	if getElementData ( getLocalPlayer(), "loggedin" ) == 1 then
		if not isTimer(closeCooldown) then
			if not guiGetVisible(GUITicketSys.window[1]) then
			guiSetVisible(GUITicketSys.window[1], true)
			showCursor(true)
			setElementClicked ( true )
			updateFromServer()
			closeCooldown = setTimer(function() end, 5000, 1)
			guiSetInputEnabled ( false )
			end
		else
		outputChatBox("#FF0000Du musst 5 Sekunden warten, bevor du das Ticketsystem erneut öffnen kannst.", 255, 0, 0, true)
		end
	end
end)

addCommandHandler("report", function ()

	--if exports["vio"]:isLoginC(pname) then
--if exports["vio"]:vioGetElementData(pname,"loggedin") == 1 then
if getElementData ( getLocalPlayer(), "loggedin" ) == 1 then
		if not isTimer(closeCooldown) then
			if not guiGetVisible(GUITicketSys.window[1]) then
			guiSetVisible(GUITicketSys.window[1], true)
			showCursor(true)
			setElementClicked ( true )
			updateFromServer()
			closeCooldown = setTimer(function() end, 5000, 1)
			guiSetInputEnabled ( false )
			end
		else
		outputChatBox("#FF0000Du musst 5 Sekunden warten, bevor du das Ticketsystem erneut öffnen kannst.", 255, 0, 0, true)
		end
	end
end)

function updateFromServer()
	guiGridListClear(GUITicketSys.gridlist["open"])
	guiGridListClear(GUITicketSys.gridlist["closed"])
	guiGridListClear(GUITicketSys.gridlist["all"])
	triggerServerEvent("updateTicketsForClient", getLocalPlayer())
end
addEvent ( "updateFromServerEvent", true )
addEventHandler ( "updateFromServerEvent", getRootElement(), updateFromServer )

-- Admins anzeigen
addEventHandler ( "onClientGUIClick", GUITicketSys.button[7], function (button, state) 
	if button == "left" and source == GUITicketSys.button[7] then
		updateFromServer()
		guiSetEnabled(GUITicketSys.button[7], false)
		setTimer(guiSetEnabled, 5000, 1, GUITicketSys.button[7], true)
		local refreshCooldown = 5
		guiSetText(GUITicketSys.button[7], "Admins anzeigen ("..refreshCooldown..")")
		setTimer(function () refreshCooldown = refreshCooldown - 1 guiSetText(GUITicketSys.button[7], "Admins anzeigen ("..refreshCooldown..")") if refreshCooldown == 0 then guiSetText(GUITicketSys.button[7], "Admins anzeigen") end end, 1000, 5)
		guiSetVisible(GUITicketSys2.window[1], false)
		guiSetVisible(GUITicketSys3.window[1], false)
		guiSetVisible(GUITicketSys4.window[1], false)
		guiSetVisible(GUITicketSys5.window[1], false)
		
		triggerServerEvent ( "seeadmins",lp,lp )
		
	end
end, false )
--main schliessen
addEventHandler ( "onClientGUIClick", GUITicketSys.button[2], function (button, state) 
	if button == "left" and source == GUITicketSys.button[2] then
		guiSetVisible(GUITicketSys.window[1], false)
		guiSetVisible(GUITicketSys2.window[1], false)
		guiSetVisible(GUITicketSys3.window[1], false)
		guiSetVisible(GUITicketSys4.window[1], false)
		guiSetVisible(GUITicketSys5.window[1], false)
		showCursor(false)
		showChat(true)
		setElementClicked ( false )
		removeEventHandler ( "onClientRender", root, drawRec )
	end
end, false )

--main aktualisieren
addEventHandler ( "onClientGUIClick", GUITicketSys.button[5], function (button, state) 
	if button == "left" and source == GUITicketSys.button[5] then
		updateFromServer()
		guiSetEnabled(GUITicketSys.button[5], false)
		setTimer(guiSetEnabled, 5000, 1, GUITicketSys.button[5], true)
		local refreshCooldown = 5
		guiSetText(GUITicketSys.button[5], "Aktualisieren ("..refreshCooldown..")")
		setTimer(function () refreshCooldown = refreshCooldown - 1 guiSetText(GUITicketSys.button[5], "Aktualisieren ("..refreshCooldown..")") if refreshCooldown == 0 then guiSetText(GUITicketSys.button[5], "Aktualisieren") end end, 1000, 5)
		guiSetVisible(GUITicketSys2.window[1], false)
		guiSetVisible(GUITicketSys3.window[1], false)
		guiSetVisible(GUITicketSys4.window[1], false)
		guiSetVisible(GUITicketSys5.window[1], false)
	end
end, false )

--ticket erstellen gui oeffnen
addEventHandler ( "onClientGUIClick", GUITicketSys.button[1], function (button, state) 
	if button == "left" and source == GUITicketSys.button[1] then
		guiSetVisible(GUITicketSys2.window[1], true)
		guiBringToFront(GUITicketSys2.window[1])
		guiSetText(GUITicketSys2.edit[1], "")
		guiSetText(GUITicketSys2.memo[1], "")
		guiSetVisible(GUITicketSys3.window[1], false)
		guiSetVisible(GUITicketSys4.window[1], false)
		guiSetVisible(GUITicketSys5.window[1], false)
	end
end, false )

--ticket erstellen gui schliessen
addEventHandler ( "onClientGUIClick", GUITicketSys2.button[2], function (button, state) 
	if button == "left" and source == GUITicketSys2.button[2] then
		guiSetVisible(GUITicketSys2.window[1], false)
		removeEventHandler ( "onClientRender", root, drawRec )
	end
end, false )

--ticket erstellen ueberpruefen ob titel vorhanden
addEventHandler("onClientGUIChanged", GUITicketSys2.edit[1], function() 
	if string.len(guiGetText(GUITicketSys2.edit[1])) < 1 then
		guiSetEnabled(GUITicketSys2.button[1], false)
		guiSetEnabled(GUITicketSys2.memo[1], false)
	else
		guiSetEnabled(GUITicketSys2.button[1], true)
		guiSetEnabled(GUITicketSys2.memo[1], true)
	end
end)

--ticket erstellen absenden
local selectedType
addEventHandler ( "onClientGUIClick", GUITicketSys2.button[1], function (button, state) 
	
	selectedType = guiGridListGetSelectedItems ( reasionGrid )
	if button == "left" and source == GUITicketSys2.button[1] and selectedType then
		selectedType = guiGridListGetItemText ( reasionGrid, selectedType[1]["row"], 1 )
		triggerServerEvent("insertTicketData", getLocalPlayer(), selectedType, guiGetText(GUITicketSys2.edit[1]), guiGetText(GUITicketSys2.memo[1]))
		guiSetVisible(GUITicketSys2.window[1], false)
	end
end, false )

--close ticket
addEventHandler ( "onClientGUIClick", GUITicketSys.button[4], function (button, state) 
	if button == "left" and source == GUITicketSys.button[4] then
		if guiGetSelectedTab(GUITicketSys.tabpanel[1]) == GUITicketSys.tab["open"] then
			local curItem = guiGridListGetSelectedItems ( GUITicketSys.gridlist["open"] )
			triggerServerEvent("closeTicket", getLocalPlayer(), guiGridListGetItemText ( GUITicketSys.gridlist["open"], curItem[1]["row"], 1 ))
			updateFromServer()
			guiSetEnabled(GUITicketSys.button[4], false)
			setTimer(guiSetEnabled, 5000, 1, GUITicketSys.button[4], true)
			local refreshCooldown = 5
			guiSetText(GUITicketSys.button[4], "Ausgewähltes\nTicket schliessen ("..refreshCooldown..")")
			setTimer(function () refreshCooldown = refreshCooldown - 1 guiSetText(GUITicketSys.button[4], "Ausgewähltes\nTicket schliessen ("..refreshCooldown..")") if refreshCooldown == 0 then guiSetText(GUITicketSys.button[4], "Ausgewähltes\nTicket schliessen") end end, 1000, 5)
			guiSetVisible(GUITicketSys2.window[1], false)
			guiSetVisible(GUITicketSys3.window[1], false)
			guiSetVisible(GUITicketSys4.window[1], false)
			guiSetVisible(GUITicketSys5.window[1], false)
		end
		if guiGetSelectedTab(GUITicketSys.tabpanel[1]) == GUITicketSys.tab["all"] then
			local curItem = guiGridListGetSelectedItems ( GUITicketSys.gridlist["all"] )
			triggerServerEvent("closeTicket", getLocalPlayer(), guiGridListGetItemText ( GUITicketSys.gridlist["all"], curItem[1]["row"], 1 ))
			updateFromServer()
			guiSetEnabled(GUITicketSys.button[4], false)
			setTimer(guiSetEnabled, 5000, 1, GUITicketSys.button[4], true)
			local refreshCooldown = 5
			guiSetText(GUITicketSys.button[4], "Ausgewähltes\nTicket schliessen ("..refreshCooldown..")")
			setTimer(function () refreshCooldown = refreshCooldown - 1 guiSetText(GUITicketSys.button[4], "Ausgewähltes\nTicket schliessen ("..refreshCooldown..")") if refreshCooldown == 0 then guiSetText(GUITicketSys.button[4], "Ausgewähltes\nTicket schliessen") end end, 1000, 5)
			guiSetVisible(GUITicketSys2.window[1], false)
			guiSetVisible(GUITicketSys3.window[1], false)
			guiSetVisible(GUITicketSys4.window[1], false)
			guiSetVisible(GUITicketSys5.window[1], false)
		end
	end
end, false )


--ticket anzeigen gui oeffnen, initialisieren
addEventHandler ( "onClientGUIClick", GUITicketSys.button[3], function (button, state) 
	if button == "left" and source == GUITicketSys.button[3] then
		if guiGetSelectedTab(GUITicketSys.tabpanel[1]) == GUITicketSys.tab["open"] then
			local curItem = guiGridListGetSelectedItems ( GUITicketSys.gridlist["open"] )
			guiGridListClear(GUITicketSys3.gridlist[1])
			triggerServerEvent("getSelTicketDataFromServer", getLocalPlayer(), guiGridListGetItemText ( GUITicketSys.gridlist["open"], curItem[1]["row"], 1 ))
			guiSetVisible(GUITicketSys3.window[1], true)
			guiSetEnabled(GUITicketSys.button[3], false)
			setTimer(guiSetEnabled, 5000, 1, GUITicketSys.button[3], true)
			local refreshCooldown = 5
			guiSetText(GUITicketSys.button[3], "Ausgewähltes\nTicket anzeigen ("..refreshCooldown..")")
			setTimer(function () refreshCooldown = refreshCooldown - 1 guiSetText(GUITicketSys.button[3], "Ausgewähltes\nTicket anzeigen ("..refreshCooldown..")") if refreshCooldown == 0 then guiSetText(GUITicketSys.button[3], "Ausgewähltes\nTicket anzeigen") end end, 1000, 5)
			guiBringToFront(GUITicketSys3.window[1])
			guiSetVisible(GUITicketSys4.window[1], false)
			guiSetVisible(GUITicketSys2.window[1], false)
			guiSetVisible(GUITicketSys5.window[1], false)
		end
		if guiGetSelectedTab(GUITicketSys.tabpanel[1]) == GUITicketSys.tab["closed"] then
			local curItem = guiGridListGetSelectedItems ( GUITicketSys.gridlist["closed"] )
			guiGridListClear(GUITicketSys3.gridlist[1])
			triggerServerEvent("getSelTicketDataFromServer", getLocalPlayer(), guiGridListGetItemText ( GUITicketSys.gridlist["closed"], curItem[1]["row"], 1 ))
			guiSetVisible(GUITicketSys3.window[1], true)
			guiSetEnabled(GUITicketSys.button[3], false)
			setTimer(guiSetEnabled, 5000, 1, GUITicketSys.button[3], true)
			local refreshCooldown = 5
			guiSetText(GUITicketSys.button[3], "Ausgewähltes\nTicket anzeigen ("..refreshCooldown..")")
			setTimer(function () refreshCooldown = refreshCooldown - 1 guiSetText(GUITicketSys.button[3], "Ausgewähltes\nTicket anzeigen ("..refreshCooldown..")") if refreshCooldown == 0 then guiSetText(GUITicketSys.button[3], "Ausgewähltes\nTicket anzeigen") end end, 1000, 5)
			guiBringToFront(GUITicketSys3.window[1])
			guiSetVisible(GUITicketSys4.window[1], false)
			guiSetVisible(GUITicketSys2.window[1], false)
			guiSetVisible(GUITicketSys5.window[1], false)
		end
		if guiGetSelectedTab(GUITicketSys.tabpanel[1]) == GUITicketSys.tab["all"] then
			local curItem = guiGridListGetSelectedItems ( GUITicketSys.gridlist["all"] )
			guiGridListClear(GUITicketSys3.gridlist[1])
			triggerServerEvent("getSelTicketDataFromServer", getLocalPlayer(), guiGridListGetItemText ( GUITicketSys.gridlist["all"], curItem[1]["row"], 1 ))
			guiSetVisible(GUITicketSys3.window[1], true)
			guiSetEnabled(GUITicketSys.button[3], false)
			setTimer(guiSetEnabled, 5000, 1, GUITicketSys.button[3], true)
			local refreshCooldown = 5
			guiSetText(GUITicketSys.button[3], "Ausgewähltes\nTicket anzeigen ("..refreshCooldown..")")
			setTimer(function () refreshCooldown = refreshCooldown - 1 guiSetText(GUITicketSys.button[3], "Ausgewähltes\nTicket anzeigen ("..refreshCooldown..")") if refreshCooldown == 0 then guiSetText(GUITicketSys.button[3], "Ausgewähltes\nTicket anzeigen") end end, 1000, 5)
			guiBringToFront(GUITicketSys3.window[1])
			guiSetVisible(GUITicketSys4.window[1], false)
			guiSetVisible(GUITicketSys2.window[1], false)
			guiSetVisible(GUITicketSys5.window[1], false)
			
		end
	end
end, false )

--update sel ticket
local curTicketID
function updateSelTicketFunc(id, typ, title, text, state)
	guiSetText(GUITicketSys3.window[1], "Ticket (#"..id..")")
	guiSetText(GUITicketSys3.label[4], typ)
	guiSetText(GUITicketSys3.edit[1], title)
	guiSetText(GUITicketSys3.memo[1], text)
	guiSetText(GUITicketSys4.window[1], "Antwort erstellen | Ticket (#"..id..")")
	if state == "open" then
		guiSetEnabled(GUITicketSys3.button[1], true)
		guiSetText(GUITicketSys3.button[1], "Antworten")
	elseif state == "closed" then
		guiSetEnabled(GUITicketSys3.button[1], false)
		guiSetText(GUITicketSys3.button[1], "(Ticket ist geschlossen)")
	end
	curTicketID = id
	
end
addEvent ( "updateSelTicket", true )
addEventHandler ( "updateSelTicket", getRootElement(), updateSelTicketFunc )

--ticket anzeigen schliessen
addEventHandler ( "onClientGUIClick", GUITicketSys3.button[2], function (button, state) 
	if button == "left" and source == GUITicketSys3.button[2] then
		guiSetVisible(GUITicketSys3.window[1], false)
		guiSetVisible(GUITicketSys4.window[1], false)
		guiSetVisible(GUITicketSys5.window[1], false)
	end
end, false )

--antwort erstellen oeffnen
addEventHandler ( "onClientGUIClick", GUITicketSys3.button[1], function (button, state) 
	if button == "left" and source == GUITicketSys3.button[1] then
		guiSetVisible(GUITicketSys4.window[1], true)
		guiBringToFront(GUITicketSys4.window[1])
		guiSetText(GUITicketSys4.memo[1], "")
		guiSetEnabled(GUITicketSys4.button[1], false)
	end
end, false )

--antwort erstellen schliessen
addEventHandler ( "onClientGUIClick", GUITicketSys4.button[2], function (button, state) 
	if button == "left" and source == GUITicketSys4.button[2] then
		guiSetVisible(GUITicketSys4.window[1], false)
	end
end, false )

--antwort erstellen absenden
addEventHandler ( "onClientGUIClick", GUITicketSys4.button[1], function (button, state) 
	if button == "left" and source == GUITicketSys4.button[1] then
		guiGridListClear(GUITicketSys3.gridlist[1])
		triggerServerEvent("insertAntwortData", getLocalPlayer(), curTicketID, guiGetText(GUITicketSys4.memo[1]))
		triggerServerEvent("getSelTicketDataFromServer", getLocalPlayer(), curTicketID)
		guiSetVisible(GUITicketSys4.window[1], false)
		updateFromServer()
	end
end, false )

--antworten aktualisieren
function updateSelTicketAntwortenFunc(id, from)
		local open_row = guiGridListAddRow ( GUITicketSys3.gridlist[1] )
		guiGridListSetItemText ( GUITicketSys3.gridlist[1], open_row, antwort_grid_id, id, false, false )
		guiGridListSetItemText ( GUITicketSys3.gridlist[1], open_row, antwort_grid_from, from, false, false )
end
addEvent ( "updateSelTicketAntworten", true )
addEventHandler ( "updateSelTicketAntworten", getRootElement(), updateSelTicketAntwortenFunc )

--antworten ueberpruefen ob text vorhanen
addEventHandler("onClientGUIChanged", GUITicketSys4.memo[1], function() 
	if string.len(guiGetText(GUITicketSys4.memo[1])) < 2 then
		guiSetEnabled(GUITicketSys4.button[1], false)
	else
		guiSetEnabled(GUITicketSys4.button[1], true)
	end
end)

--antwort lesen oeffnen
addEventHandler ( "onClientGUIClick", GUITicketSys3.button[3], function (button, state) 
	if button == "left" and source == GUITicketSys3.button[3] then
		local curItem = guiGridListGetSelectedItems ( GUITicketSys3.gridlist[1] )
		triggerServerEvent("getCurAntwort", getLocalPlayer(), curTicketID, guiGridListGetItemText ( GUITicketSys3.gridlist[1], curItem[1]["row"], 1 ))
		guiSetEnabled(GUITicketSys3.button[3], false)
		setTimer(guiSetEnabled, 5000, 1, GUITicketSys3.button[3], true)
		local refreshCooldown = 5
		guiSetText(GUITicketSys3.button[3], "("..refreshCooldown..")")
		setTimer(function () refreshCooldown = refreshCooldown - 1 guiSetText(GUITicketSys3.button[3], "("..refreshCooldown..")") if refreshCooldown == 0 then guiSetText(GUITicketSys3.button[3], "Anzeigen") end end, 1000, 5)
		guiBringToFront(GUITicketSys3.window[1])
		guiSetVisible(GUITicketSys4.window[1], false)
		guiSetVisible(GUITicketSys2.window[1], false)
		guiSetVisible(GUITicketSys5.window[1], true)
		guiBringToFront(GUITicketSys5.window[1])
	end
end, false )

--aktualisere Antwort text
function updateReadAntwortFunc(from, text)
	guiSetText(GUITicketSys5.label[1], "Antwort von "..from..":")
	guiSetText(GUITicketSys5.memo[1], text)
end
addEvent ( "updateReadAntwort", true )
addEventHandler ( "updateReadAntwort", getRootElement(), updateReadAntwortFunc )

--antwort lesen schliessen
addEventHandler ( "onClientGUIClick", GUITicketSys5.button[1], function (button, state) 
	if button == "left" and source == GUITicketSys5.button[1] then
		guiSetVisible(GUITicketSys5.window[1], false)
	end
end, false )