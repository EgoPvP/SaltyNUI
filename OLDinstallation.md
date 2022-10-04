# THIS IS OUTDATED AND DOES NOT WORK ANYMORE --- ITS ONLY NEEDED WITH OLD VERSIONS! DOWNLOAD THE LATEST VERSION FROM YOUR KEYMASTER OR GET THE NEW VERSION IN OUR [SHOP](https://shop.egorp.net/package/4668315)



### Basic Installation
- Get the Script from our Store: [CLICK ME](https://shop.egorp.net/package/4668315)
- Rename the Downloaded Folder to "saltynui"
- Copy the Folder into your ressources/ folder
- Add `ensure saltynui` to your server.cfg and make sure the NUI is started AFTER SaltyChat.

On the Basic Installation SaltyNUI only gets triggered when u mute your Microphone. To get triggered when Player is in Wrong Server/Channel or isnt even Online you need the Advanced Installation!

## Advanced Installation
### For Saltychat 2.2.x  - LATEST

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
