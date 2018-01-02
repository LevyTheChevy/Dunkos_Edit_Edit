-- event handler
AddEventHandler("playerSpawned", function(spawn)
 
   local playerName = GetPlayerName( PlayerId() ) -- See native: https://runtime.fivem.net/doc/reference.html#_0x6D0DE6A7B5DA71F8
   
   --EDIT THE WELCOME TEXT TO WHAT EVER YOU WANT
    notification('Welcome to ~b~My Server!' .. playerName .. '!' ) --calling the notifaction function

end)

function notification(msg)                   --notifaction function
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(false, false)
end
