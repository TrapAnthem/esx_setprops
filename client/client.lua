RegisterNetEvent('esx_setprop:model_01')
AddEventHandler('esx_setprop:model_01', function ()
	TriggerEvent('esx_inventoryhud:closeHud')
	if not wheel then
		--
		wheel = true
		local ped = GetPlayerPed(-1)
		local position = GetEntityCoords(GetPlayerPed(PlayerId()), false)
		local object = GetClosestObjectOfType(position.x, position.y, position.z, 15.0, GetHashKey(Config.prop1), false, false, false)
		if object ~= 0 then
			DeleteObject(object)
		end
		--
		local x,y,z = table.unpack(GetEntityCoords(ped))
		local prop = CreateObject(GetHashKey(Config.prop1), x, y, z + 0.2, true, true, true)
		local boneIndex = GetPedBoneIndex(ped, 0x322c)
		AttachEntityToEntity(prop, ped, boneIndex, 0.25, 0.00, 0.00, 0.0, 90.00, 200.0, true, true, false, true, 1, true)
		else
		--
		local ped = GetPlayerPed(-1)
		local position = GetEntityCoords(GetPlayerPed(PlayerId()), false)
		local object = GetClosestObjectOfType(position.x, position.y, position.z, 15.0, GetHashKey(Config.prop1), false, false, false)
		if object ~= 0 then
			DeleteObject(object)
		end
		--
		local x,y,z = table.unpack(GetEntityCoords(ped))
		local prop = CreateObject(GetHashKey(Config.prop1), x, y, z + 0.2, true, true, true)
		local boneIndex = GetPedBoneIndex(ped, 0x322c)
		AttachEntityToEntity(prop, ped, boneIndex, 0.25, 0.00, 0.00, 0.0, 90.00, 200.0, true, true, false, true, 1, true)
		ClearPedTasks(ped)
		wheel = false
		DetachEntity(prop, ped, boneIndex, 0.25, 0.00, 0.00, 0.0, 90.00, 200.0, true, true, false, true, 1, true)
		DeleteObject(prop)
	end
end)