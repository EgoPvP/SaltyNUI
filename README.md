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
- Rename the Downloaded Folder to "saltynui"
- Copy the Folder into your ressources/ folder
- Add `ensure saltynui` to your server.cfg and make sure the NUI is started AFTER SaltyChat.

On the Basic Installation SaltyNUI only gets triggered when u mute your Microphone. To get triggered when Player is in Wrong Server/Channel or isnt even Online you need the Advanced Installation!

## Advanced Installation

### For Saltychat 2.x.x

- Open the SaltyChat C# solution in VS
- Open SaltyClient/VoiceManager.cs
- Goto Line ~564 and add 
```c#
if(instanceState.IsReady){
   BaseScript.TriggerEvent("SaltyNUI:TsActive");
 }else{
   BaseScript.TriggerEvent("SaltyNUI:TsNotActive");
 } 
```
to the OnMessage Event (under case Command.InstanceState)
It should look somethings like [THIS](https://screens.egopvp.com/files/2020/08/07/devenv_0dI2m50Rvj.png) 

- Goto Line 500 and add `BaseScript.TriggerEvent("SaltyNUI:TsNotActive");` to the OnDisconnected Event (It should look like [THIS](https://screens.egopvp.com/files/2020/05/30/devenv_g5rbAJWpAH.png))

- !!IMPORTANT!! COMPILE SALTYCHAT AGAIN AND RE-UPLAOD IT!

These events gets triggered when Players close their Teamspeak Client and connect to a server / switch Channels

### For Saltychat 1.x.x

- Open the SaltyChat C# solution in VS
- Open SaltyClient/VoiceManager.cs
- Goto Line ~560 and add 
```c#
if(pluginState.IsReady){
   BaseScript.TriggerEvent("SaltyNUI:TsActive");
 }else{
   BaseScript.TriggerEvent("SaltyNUI:TsNotActive");
 } 
```
to the OnMessage Event (under case Command.StateUpdate)
It should look somethings like [THIS](https://screens.egopvp.com/files/2020/05/30/devenv_58LaZ8WVeJ.png) 

- Goto Line 500 and add `BaseScript.TriggerEvent("SaltyNUI:TsNotActive");` to the OnDisconnected Event (It should look like [THIS](https://screens.egopvp.com/files/2020/05/30/devenv_g5rbAJWpAH.png))

- !!IMPORTANT!! COMPILE SALTYCHAT AGAIN AND RE-UPLAOD IT!

These events gets triggered when Players close their Teamspeak Client and connect to a server / switch Channels

## Support
If you need any kind of Support, feel free to open an Issue.

### A lot of u guys seem to have problems READING the Readme. Make shure u read it carefully and didnt miss anything and added the Event-Triggers like you should. I dont Provide a screenshot for you to not use it. Its supposed to be a helping thing.

### Be aware that the Official SaltyChat Devs wont give you support of any kind for 3rd party ressources and only reffer to asking me.

### Make sure, u provide ur SaltyChat version and a Screenshot of the Code that you have added so i can do some proper bugfixxing!

Otherwise you can Contact me here:
[Discord](https://egopvp.com/discord) (German / English) (NO DM SUPPORT!!! ONLY VIA THE GITHUB SUPPORT CHANNEL!)

Teamspeak: ts.egopvp.com (German Only!)

## License

SaltyNUI - Discourage Users without Temspeak running when using SaltyChat!

Copyright (C) 2020 - [EgoPvP.com](https://egopvp.com)

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
