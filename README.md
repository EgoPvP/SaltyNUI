# SaltyNUI
Discourage Users without Temspeak running when using SaltyChat!


The goal of this simple Lua scirpt is to block Player from moving & display a black screen when your Server is using the SaltyChat System but the the Player isnt online on your Teamspeak Server similar to TokoVoip's one.

## What is Saltychat?
SaltyChat is an Open-Source Community Supported Proximity Chat system using a Teamspeak Server instead of the GTA-V Voice Chat. 
It offers many features besides the Proximity Chat like Radio Channels and Private Phone Calls.

[Download SaltyChat](https://github.com/saltminede/saltychat-fivem)

## How to Install?
### Basic Installation
- Download the latest Release of SaltyNUI
- Copy the Folder into your ressources/ folder
- Add `ensure saltynui` to your server.cfg and make sure the NUI is started AFTER SaltyChat.

### Advanced Installation
- Open the SaltyChat solution in VS
- Open SaltyClient/VoiceManager.cs
- Goto Line 489 and add `BaseScript.TriggerEvent("SaltyNUI:TsActive");`to the OnConnected Event
- Goto Line 500 and add `BaseScript.TriggerEvent("SaltyNUI:TsNotActive");`to the OnDisconnected Event

These events gets triggered when Players close their Teamspeak Client or connect to it.

### License

SaltyNUI - Discourage Users without Temspeak running when using SaltyChat!

Copyright (C) 2020 - EgoPvP.com

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
