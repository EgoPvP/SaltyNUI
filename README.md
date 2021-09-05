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
### For Saltychat 2.2.x  (LATEST)

- Open the SaltyChat C# solution in VS
- Open SaltyClient/VoiceManager.cs
- Goto Line ~640 and add 
```c#
if (this.PlguinState == GameInstanceState.Ingame){
BaseScript.TriggerEvent("SaltyNUI:TsActive");
}else{
BaseScript.TriggerEvent("SaltyNUI:TsNotActive");
}
```
to the OnMessage Event (under case Command.InstanceState)
It should look somethings like [THIS](https://screens.egopvp.com/files/2021/04/02/devenv_e0uIMJJ1Mt.png) 

- Goto Line 500 and add `BaseScript.TriggerEvent("SaltyNUI:TsNotActive");` to the OnDisconnected Event (It should look like [THIS](https://screens.egopvp.com/files/2020/05/30/devenv_g5rbAJWpAH.png))
- !!IMPORTANT!! COMPILE SALTYCHAT AGAIN AND RE-UPLAOD IT!

These events gets triggered when Players close their Teamspeak Client and connect to a server / switch Channels

### For Saltychat 2.0.x - 2.1.2

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

## What if i want to Whitelist Swiss-Channels in SaltyNUI

### !!IMPORTANT!! If you have added every channel beside the "Join here to get moved into ingame channel" People **WILL** be able to Play on your Server by just joining your Teamspeak Server and sitting in **ANY** channel they like. Even if its not the "Ingame" channel thus defeting this script's purpose.
If you want to have People be able to go into Support & have them still able to play on the Server, just move the out of the "ingame" channel. Moving the player wont trigger saltynnui to be displayed. 

Also setting up every channel besides the "waiting" channel as a Swiss-Channel is **NOT** recommended!

- Instead of adding the above code to Line ~640 add this one:
```c#
if (this.PlguinState == GameInstanceState.Ingame || this.PlguinState == GameInstanceState.InSwissChannel){
BaseScript.TriggerEvent("SaltyNUI:TsActive");
}else{
BaseScript.TriggerEvent("SaltyNUI:TsNotActive");
}
```

## Other Scripts

- [erp_antifalldown](https://github.com/EgoPvP/erp_antifalldown) - Stop your Player from falling into the dark void.
- [erp_towscript](https://github.com/EgoPvP/erp_towscript) - Highly Customisable and top working Vehicle Towing Script for FiveM
- [sitdown](https://github.com/EgoPvP/sitdown) - Sitting made easy!

## Support
If you need any kind of Support, feel free to open an Issue.

### A lot of u guys seem to have problems READING the Readme. Make shure u read it carefully and didnt miss anything and added the Event-Triggers like you should. I dont Provide a screenshot for you to not use it. Its supposed to be a helping thing.

### Be aware that the Official SaltyChat Devs wont give you support of any kind for 3rd party ressources and only reffer to asking me.

### Make sure, u provide ur SaltyChat version and a Screenshot of the Code that you have added so i can do some proper bugfixxing!

Otherwise you can Contact me here:
[Discord](https://discord.gg/6jsHUVMh8G)

Teamspeak: ts.egopvp.com (German Only!)

## Donate
If you like my work, you can Support me!

[Tebex (Paypal & co.)](https://shop.egorp.net/package/4667135)

BTC - bc1qn5d5hvecydfcr7xd65z2nun7a8t6wvgc9yuuxr <br>
WBTC - 0x411BFd32d22F2D04A40C2edFE8f5fb8E9Dc80412 <br>
ETH - 0x411BFd32d22F2D04A40C2edFE8f5fb8E9Dc80412 <br>
ZEC - t1XyjYpkBZpvTSD41toPWdzmr2UTq3KKHRT <br>
DASH - Xs9YwqZbyaNHWJcDF1Tgn1jQJqd8XHzLyh <br>
LTC - LMsnx3kVYAtKXJoERq51PZ367wihVmjxns <br>
DOGE - DHemyecWnQ55uwnRGzhVmoqwPSY1zA32Gs <br>

## Script store

If you are looking for more Scripts, check out our Custom Script Store: <br>
[shop.egorp.net](https://shop.egorp.net/)

## License

SaltyNUI - Discourage Users without Temspeak running when using SaltyChat!

Copyright (C) 2020 - [EgoPvP.com](https://egopvp.com)

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
