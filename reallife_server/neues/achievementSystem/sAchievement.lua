
function hasAchievement ( player, id )
	if dbExist ( "achievements", "achievmentID LIKE '"..id.."' AND UID LIKE '"..playerUID[getPlayerName(player)].."'") then
		return true
	else
		return false
	end
end

function giveAchievement( player, id )
	if tonumber(achievementID[id]) then
		if not hasAchievement ( player, id ) then
			dbExec ( handler, "INSERT INTO ?? (??,??,??) VALUE (?,?,?)", "achievements", "UID", "achievmentID", "data", playerUID[getPlayerName(player)], id, getData ( getTimestamp ( ) ) )
			givePlayerXP( player, achievementGainXP[id] )
			vioSetElementData ( player, "money", vioGetElementData ( player, "money" ) + achievementGainMoney[id] )
			triggerClientEvent ( player, "showAchievment", getRootElement(), id, achievementName[id], achievementDescription[id], achievementGainXP[id], achievementGainMoney[id], achievementPic[id]  )

		end
	end
end


addEvent ( "giveAchievement", true )
addEventHandler ( "giveAchievement", getRootElement(),  giveAchievement )


function checkAchievments (player)
local faction = getPlayerFaction(player)
local rank = getPlayerRank (player)
local geld = tonumber(vioGetElementData ( player, "money" )) + tonumber(vioGetElementData ( player, "bankmoney" ))

if faction > 0  then
	giveAchievement( player, 6 )
end

if faction > 0 and rank >= 4 then
	giveAchievement( player, 7 )
end

if geld >= 5000000 then
	giveAchievement( player, 11 )
end

if geld >= 10000000 then
	giveAchievement( player, 12 )
end


end