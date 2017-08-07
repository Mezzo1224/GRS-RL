local x, y = guiGetScreenSize()
local sx, sy = x/1920, y/1080
local player_screen = x * y
local screen = (1920 * 1080) -- deine auflösung
local screen = screen/100 --dreisatz = 1%
local player_screen = player_screen/screen -- die Prozentzahl vom Spieler Bildschirm im Vergleich mit der größten Auflösung
local size = 1*sy
forumAcc = {}
forumAcc = frameWork:new (734*sx, 367*sy, 453*sx, 346*sy, false, {0,0,0}, 200 )
forumAcc.isVisible = false
local createAcc = forumAcc:addButton (10*sx, 266*sy, 106*sx, 49*sy, "Forum Account\nerstellen","default-bold",size, 255 )
local closeb = forumAcc:addButton (337*sx, 265*sy, 106*sx, 49*sy, "Später...","default-bold",size, 255 )
local email = guiCreateEdit(888*sx, 513*sy, 145*sx, 26*sy, "E-Mail", false)      -- Aufgrund des @
guiSetVisible(email,false)
local passwort = forumAcc:addEdit ( 154*sx, 182*sy, 145*sx, 26*sy, "Passwort", false ) 
local passwortre = forumAcc:addEdit ( 154*sx, 218*sy, 145*sx, 26*sy, "Passwort wiederholen", false )              
forumAcc:addText (  "Hallo, \num bei GRS Reallife sich für wichtige Posten bspw. ein Leaderposte zu\nbewerben, muss man im Forum aktiv sein bzw. ein Account besitzen.\nDies geht nur, wenn man die unten angegebenen Felder ausfüllt und \nauf\"Account erstellen\" klicken. Falls du es noch nicht machen willst\nklicke einfach auf \"Später\".",40*sx, 29*sy, 433*sx, 98*sy, tocolor(255,255,255,255),1, "ariel", "left","top", false, false,false, false) 
forumAcc.HEADER = "Forum Account"
forumAcc.Movable = false






function forumacc()
forumAcc.isVisible = true
guiSetInputEnabled(false)
setElementData(lp, "ElementClicked", true)
showCursor(true)		
guiSetVisible(email,true)
addEventHandler ('onDxClick', root, function ( element, btn, state )
		if element == closeb.pointer then
			if btn == "left" and state == "up" then
				forumAcc.isVisible = false
				showCursor(false)
				setElementData ( lp, "ElementClicked", false )
				guiSetInputEnabled(true)
				guiSetVisible(email,false)
			end
		elseif element == createAcc.pointer then
			if btn == "left" and state == "up" then
				pass = forumAcc:getText(passwort)
				passre = forumAcc:getText(passwortre)
				emaild = guiGetText(email)
				if string.find(emaild,"@") then
				if string.len(pass) >= 6 and string.len(passre) >= 6 then
				if  pass == passre then 
					forumAcc.isVisible = false
					showCursor(false)
					setElementData ( lp, "ElementClicked", false )
					guiSetInputEnabled(true)
					triggerServerEvent ( "regforumnotfall", getRootElement(), lp, pass , email )
					guiSetVisible(email,false)
					else

				infobox_start_func("Die Passwörter sich nicht identich.", 7000, 125, 0, 0)
				end
				else

				infobox_start_func("Dein Passwort muss mindestens 6 Zeichen enthalten.", 7000, 125, 0, 0)
				end
				else

				infobox_start_func("Untültige E-Mail.", 7000, 125, 0, 0)
				end
		end
		end
	end)
end	
	
	
addEvent ("newForumAccount", true )
addEventHandler ( "newForumAccount", getRootElement(), forumacc )
