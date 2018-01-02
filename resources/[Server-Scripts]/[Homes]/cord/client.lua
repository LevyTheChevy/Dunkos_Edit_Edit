local TeleportFromTo = {

	["Hangars"] = {
		positionFrom = { ['x'] = -925.74407958984, ['y'] = -2940.9672851563, ['z'] = 13.945067405701, nom = "Enter - Airfeild"},
		positionTo = { ['x'] = -901.70129394531, ['y'] = -3293.984375, ['z'] = 13.944430351257, nom = "Exit - Airfeild"},
	},

--[[	["Bahama Mamas"] = {
		positionFrom = { ['x'] = -1388.6527, ['y'] = -586.1796, ['z'] = 30.2184, nom = "Intérieur - Bahama Mamas"},
		positionTo = { ['x'] = -1387.61, ['y'] = -588.068, ['z'] = 30.3195, nom = "Exit - Bahama Mamas"},
	},
	
	["Arcadius Buisiness"] = {
		positionFrom = { ['x'] = -117.2135, ['y'] = -604.5497, ['z'] = 36.2807, nom = "Enter - Arcadius Buisiness"},
		positionTo = { ['x'] = -134.0843, ['y'] = -584.5471, ['z'] = 201.7355, nom = "Decendre - Arcadius Buisiness"},
	},	

		["Maze Bank Building"] = {
		positionFrom = { ['x'] = -68.7212, ['y'] = -801.0262, ['z'] = 44.2273, nom = "Toit - Maze Bank Building"},
		positionTo = { ['x'] = -67.6794, ['y'] = -821.6484, ['z'] = 321.2873, nom = "Decendre - Maze Bank Building"},
	},
	
	["Humane Labs"] = {
		positionFrom = { ['x'] = 3541.7028, ['y'] = 3674.2761, ['z'] = 28.1211, nom = "Decendre - Humane labs"},
		positionTo = { ['x'] = 3541.7314, ['y'] = 3674.2619, ['z'] = 20.9917, nom = "Enter - Humane labs"},
	},
	
	["FIB Office"] = {
		positionFrom = { ['x'] = 136.0994, ['y'] = -761.8452, ['z'] = 45.7520, nom = "Enter - Bureau du FIB"},
		positionTo = { ['x'] = 136.7892, ['y'] = -761.4996, ['z'] = 242.1518, nom = "Decendre - Bureau du FIB"},
	},
	
	["Hospital - Enter - go out"] = {
		positionFrom = { ['x'] = -497.2229, ['y'] = -335.9371, ['z'] = 34.5017, nom = "Entrer - Hôpital"},
		positionTo = { ['x'] = 275.6354, ['y'] = -1361.6866, ['z'] = 24.5167, nom = "Exit - Hôpital"},
	},
	
	["Hospital - Administration"] = {
		positionFrom = { ['x'] = 241.0631, ['y'] = -1369.4433, ['z'] = 24.5321, nom = "Enter - Administration"},
		positionTo = { ['x'] = 253.2666, ['y'] = -1364.5228, ['z'] = 39.5343, nom = "Exit - Administration"},
	},
	
	["Hospital - Heliport"] = {
		positionFrom = { ['x'] = 279.7201, ['y'] = -1349.2473, ['z'] = 24.5377, nom = "Enter - Heliport"},
		positionTo = { ['x'] = -443.9165, ['y'] = -331.5004, ['z'] = 78.1682, nom = "Exit - Heliport"},
	},
	
	["Life invader - Meeting"] = {
		positionFrom = { ['x'] = -1048.93, ['y'] = -238.589, ['z'] = 44.0211, nom = "Entrer - Salle de réunion"},
		positionTo = { ['x'] = -1046.62, ['y'] = -237.523, ['z'] = 44.0211, nom = "Exit - Salle de réunion"},
	},
	
	["Life invader - Brainstorming"] = {
		positionFrom = { ['x'] = -1056.73, ['y'] = -237.844, ['z'] = 44.0212, nom = "Entrer - Salle de brainstorming"},
		positionTo = { ['x'] = -1057.85, ['y'] = -235.752, ['z'] = 44.0212, nom = "Exit - Salle de brainstorming"},
	},
	
	["Police Station - Armory"] = {
		positionFrom = { ['x'] = 452.227, ['y'] = -982.609, ['z'] = 30.6896, nom = "Entrer - Armurie"},
		positionTo = { ['x'] = 454.494, ['y'] = -982.571, ['z'] = 30.6896, nom = "Exit - Armurie"},
	},
	
	["Detective Agency - Office"] = {
		positionFrom = { ['x'] = -1011.65, ['y'] = -480.061, ['z'] = 39.9706, nom = "Entrer - Agence de détective"},
		positionTo = { ['x'] = -1002.81, ['y'] = -477.794, ['z'] = 50.0273, nom = "Exit - Agence de détective"},
	},	--]]
}

Drawing = setmetatable({}, Drawing)
Drawing.__index = Drawing


function Drawing.draw3DText(x,y,z,textInput,fontId,scaleX,scaleY,r, g, b, a)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*20
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(r, g, b, a)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function Drawing.drawMissionText(m_text, showtime)
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(m_text)
    DrawSubtitleTimed(showtime, 1)
end

function msginf(msg, duree)
    duree = duree or 500
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(msg)
    DrawSubtitleTimed(duree, 1)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2)
		local pos = GetEntityCoords(GetPlayerPed(-1), true)
		
		for k, j in pairs(TeleportFromTo) do
		
			--msginf(k .. " " .. tostring(j.positionFrom.x), 15000)
			if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 150.0)then
				DrawMarker(1, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 5.0)then
					Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.100, j.positionFrom.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 2.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("Press the ~r~E~w~ button to ".. j.positionFrom.nom)
						DrawSubtitleTimed(2000, 1)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(1000)
							Citizen.Wait(2000)
							SetEntityCoords(GetPlayerPed(-1), j.positionTo.x, j.positionTo.y, j.positionTo.z - 1)
							DoScreenFadeIn(1000)
						end
					end
				end
			end
			
			if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 150.0)then
				DrawMarker(1, j.positionTo.x, j.positionTo.y, j.positionTo.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 5.0)then
					Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.100, j.positionTo.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 2.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("Press the ~r~E~w~ button to ".. j.positionFrom.nom)
						DrawSubtitleTimed(2000, 1)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(1000)
							Citizen.Wait(2000)
							SetEntityCoords(GetPlayerPed(-1), j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1)
							DoScreenFadeIn(1000)
						end
					end
				end
			end
		end
	end
end)