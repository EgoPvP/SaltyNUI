-- Made by ! der_nqmenl0se#1337 -- Updated by Maty
-- Support & more of my Work - https://discord.gg/qRc5Hbb --
-- Copyright (C) 2020 - EgoPvP.com
-- This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published 
-- by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.
-- This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or 
-- FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.
-- You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.


local ismuted = false

--- SaltyNUI Events ---
RegisterNetEvent('SaltyNUI:TsNotActive')
AddEventHandler('SaltyNUI:TsNotActive', function() 

	SendNUIMessage({action = "showNUI"})
	ismuted = true
	
end)
RegisterNetEvent('SaltyNUI:TsActive')
AddEventHandler('SaltyNUI:TsActive', function() 

	SendNUIMessage({action = "hideNUI"})
	ismuted = false
	
end)


-- SaltyChat Events --- 
AddEventHandler('SaltyChat_SoundStateChanged', function(muted) 

if (muted) then

	SendNUIMessage({action = "showNUI"})
	ismuted = true
	
	else
		SendNUIMessage({action = "hideNUI"})
		ismuted = false
	
	end
end)

--- Disable Movement if muted ---
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(100)
		local playerPed = PlayerPedId()

		if ismuted then
			DisableAllControlActions(0)

			
		else
			Citizen.Wait(500)
			
		end
	end
end)

