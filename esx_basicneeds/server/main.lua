ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
---------------------------------------------------------------------------------------------
ESX.RegisterUsableItem('bread', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('bread', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_bread'))
end)
------------------------------------------------------------------------------------------------
ESX.RegisterUsableItem('water', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('water', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_water'))
end)
------------------------------------------------------------------------------------------------
ESX.RegisterCommand('heal', 'admin', function(xPlayer, args, showError)
	args.playerId.triggerEvent('esx_basicneeds:healPlayer')
	args.playerId.triggerEvent('chat:addMessage', {args = {'HEAL', 'SEI STATO HEAL'}})
end, true, {help = 'Ripristina sete, fame e salute.', validate = true, arguments = {
	{name = 'playerId', help = 'the player id', type = 'player'}
}})
