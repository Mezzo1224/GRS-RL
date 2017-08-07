
-- Hier wird das Shop Item anhand der ID gegeben
-- Um neue ID's einzufügen bitte in die settings kucken
function givePlayerItemData (player, id)
	if tonumber(id) < 0 then
		if tonumber(id) == 1 	then 
			setPremiumData (player, 30, 1)
			vioSetElementData ( player, "PremiumCars", vioGetElementData ( player, "PremiumCars" ) + 1 )
		elseif tonumber(id) == 2 then
			setPremiumData (player, 30, 2)
			vioSetElementData ( player, "PremiumCars", vioGetElementData ( player, "PremiumCars" ) + 3 )
		elseif tonumber(id) == 3 then
			setPremiumData (player, 30, 3)
			vioSetElementData ( player, "PremiumCars", vioGetElementData ( player, "PremiumCars" ) + 5 )
		elseif tonumber(id) == 4 then
			vioSetElementData ( player, "PremiumCars", vioGetElementData ( player, "PremiumCars" ) + 7 )
			setPremiumData (player, 30, 4)
		elseif tonumber(id) == 5 then
			vioSetElementData ( player, "PremiumCars", vioGetElementData ( player, "PremiumCars" ) + 10 )
			setPremiumData (player, 30, 5)
		elseif tonumber(id) == 6 then
			setPremiumData (player, 60, 3)
			vioSetElementData ( player, "money", vioGetElementData ( player, "money" ) + 100000 )
			vioSetElementData ( player, "PremiumCars", vioGetElementData ( player, "PremiumCars" ) + 3 + 5 )
		end
	end
end