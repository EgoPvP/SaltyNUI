AddEventHandler('SaltyChat_PluginStateChanged', function(PluginState) 
	if PluginState == 2 or PluginState == 3 then 
		SendNUIMessage({action = "toggleWindow", value = "false"})
		EnableAllControlActions(0)
		EnableAllControlActions(2)
	else
		SendNUIMessage({action = "toggleWindow", value = "true"})
		DisableAllControlActions(0)
		DisableAllControlActions(2)
	end
end)
