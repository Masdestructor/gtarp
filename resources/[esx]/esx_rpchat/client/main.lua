RegisterNetEvent('esx_rpchat:sendProximityMessage')
AddEventHandler('esx_rpchat:sendProximityMessage', function(playerId, title, message, color)
	local player = PlayerId()
	local target = GetPlayerFromServerId(playerId)

	local playerPed = PlayerPedId()
	local targetPed = GetPlayerPed(target)
	local playerCoords = GetEntityCoords(playerPed)
	local targetCoords = GetEntityCoords(targetPed)

	if target == player or #(playerCoords - targetCoords) < 20 then
		TriggerEvent('chat:addMessage', {args = {title, message}, color = color})
	end
end)

Citizen.CreateThread(function()
	TriggerEvent('chat:addSuggestion', '/twt',  _U('twt_help'),  {{name = _U('generic_argument_name'), help = _U('generic_argument_help')}})
	TriggerEvent('chat:addSuggestion', '/ano',  _U('twtano_help'),  {{name = _U('generic_argument_name'), help = _U('generic_argument_help')}})
	TriggerEvent('chat:addSuggestion', '/hrp',   _U('hrp_help'),   {{name = _U('generic_argument_name'), help = _U('generic_argument_help')}})
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		TriggerEvent('chat:removeSuggestion', '/twt')
	end
end)

