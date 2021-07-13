ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem(Config.itemuse1, function(source)
	TriggerClientEvent('esx_setprop:model_01', source)
end)