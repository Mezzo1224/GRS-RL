local screenwidth, screenheight = guiGetScreenSize ()

function isWithinNightTime ()

    local time = getRealTime()
    local hour = time.hour
    if hour >= 20 or hour <= 8 then
        return true
    else
        return false
    end
end



function showVersionInfo ()


end


function SubmitEinloggenBtn(button)
    if button == "left" and source == loginButton  then
		source = getPlayerName(lp)
		local passwort = DGS:dgsGetText( pw )
		triggerServerEvent ( "einloggen", lp, lp, hash ( "sha512", passwort ))
		local file = xmlLoadFile ( ":reallife_server/pw.xml" )
		if DGS:dgsRadioButtonGetSelected(pwSafeYes) == true then
			local psafe = xmlFindChild ( file, "pw", 0 )
			xmlNodeSetValue ( psafe, passwort  )
			xmlSaveFile ( file )
		end
		if DGS:dgsRadioButtonGetSelected(pwSafeNo) == true then
			local psafe = xmlFindChild ( file, "pw", 0 )
			xmlNodeSetValue ( psafe, nil  )
			xmlSaveFile ( file )
		end
    end
end

function _CreateLoginWindow()






    login = DGS:dgsCreateWindow(0.44, 0.41, 0.11, 0.18,"Login",true, nil,nil,nil,nil,nil,nil,nil, true)
    DGS:dgsWindowSetSizable(login,false)
    DGS:dgsWindowSetMovable(login,false)

    DGS:dgsCreateLabel(0.04, 0.11, 0.30, 0.12,"Passwort:",true,login)

    pw = DGS:dgsCreateEdit( 0.04, 0.25, 0.91, 0.14, "", true, login )
    DGS:dgsCreateLabel(0.05, 0.44, 0.65, 0.12, "Passwort speichern ?",true,login)
	
    DGS:dgsSetProperty(pw,"masked",true)
    DGS:dgsSetParent(pw, login)
    loginButton = DGS:dgsCreateButton(0.23, 0.66, 0.54, 0.17, "Einloggen", true, login, nil, nil, nil, nil, nil, nil, tocolor(1,223,1), tocolor(4,170,4), tocolor(4,170,4) )
    pwSafeYes = DGS:dgsCreateRadioButton(0.05, 0.59, 0.60, 0.08, "Ja",true, login)
    pwSafeNo = DGS:dgsCreateRadioButton(0.67, 0.59, 0.25, 0.08, "Nein",true, login)
    addEventHandler ( "onDgsMouseClickDown", loginButton, SubmitEinloggenBtn, true )
    showCursor(true)


    local pwfile = xmlLoadFile ( ":reallife_server/pw.xml" )

    if not pwfile then
        pwfile = xmlCreateFile ( ":reallife_server/pw.xml", "PW" )
        xmlSaveFile ( pwfile )
        pwfile = xmlLoadFile ( ":reallife_server/pw.xml" )

        psafe = xmlCreateChild ( pwfile, "pw" )
        xmlSaveFile ( pwfile )
    else


        local psafe = xmlFindChild ( pwfile, "pw", 0 )
        success = xmlNodeGetValue ( psafe )
        DGS:dgsSetText(pw, success)
        DGS:dgsRadioButtonSetSelected(pwSafeYes, true)
    end
end


function camera ()
    local matrix = math.random(1,5)
    if matrix == 1 then
        setCameraMatrix (  -2002.5085449219, 97.438499450684, 50.890598297119, -2002.3596191406, 98.375770568848, 50.575439453125 )
    elseif matrix == 2 then
        setCameraMatrix (  -1994.8226318359, -150.59030151367, 71.665397644043, -1995.6309814453, -150.32920837402, 71.137786865234 )
    elseif matrix == 3 then
        setCameraMatrix (  -2134.8269042969, 1479.3785400391, 58.808700561523, -2134.3942871094, 1478.5981445313, 58.357345581055 )
    elseif matrix == 4 then
        setCameraMatrix (  -2821.173828125, 553.37512207031, 61.36360168457, -2821.9301757813, 552.81994628906, 61.017475128174 )
    elseif matrix == 5 then
        setCameraMatrix (  -1716.0357666016, 938.47021484375, 51.152000427246, -1716.7960205078, 938.76733398438, 50.574275970459 )
    end
end








function GUI_ShowLoginWindow()


    joinmusik = playSound (loginmusic, true)
    setSoundVolume(joinmusik,0.3)
    bindKey ( "enter", "down", SubmitEinloggenBtn )
    _CreateLoginWindow()

end
addEvent ( "ShowLoginWindow", true)
addEventHandler ( "ShowLoginWindow", getRootElement(), GUI_ShowLoginWindow)


function GUI_DisableLoginWindow()

    stopSound(joinmusik)
    DGS:dgsCloseWindow(login)
    showCursor(false)
    setTimer ( checkForSocialStateChanges, 10000, 0 )
    setTimer ( getPlayerSocialAvailableStates, 1000, 1 )
    if isTimer ( LVCamFlightTimer ) then
        killTimer ( LVCamFlightTimer )
    end
    setElementClicked ( false )
	
end
addEvent ( "DisableLoginWindow", true )
addEventHandler ( "DisableLoginWindow", getRootElement(), GUI_DisableLoginWindow)

addEventHandler("onClientResourceStart", getResourceRootElement(getThisResource()),
    function ()
        local player = getLocalPlayer()
        for i = 1, 100 do
            outputChatBox (" ")
        end
        triggerServerEvent ( "regcheck", getLocalPlayer(), player )
    end
)

function ShowInfoWindow ()
    infobox_start_func("Herzlich Willkommen\nbei "..sk.." Reallife\nLogge dich nun unten ein!", 7500 )
end

