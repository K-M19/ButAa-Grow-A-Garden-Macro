## Update Log (V.2.9) - ⛲ FARM COSMETICS 🛠️
### New Features
- **New**: New straight-line balancing mechanism – you no longer have to do it manually; the macro will handle it for you (just set Camera Mode and Movement Mode to Default).
- **New**: Added automatic purchasing mechanism for items in the Cosmetic Shop.
  - `BuyAllTopCosmetic=1`: to buy the 3 rare items at the top.
  - `BuyAllDownCosmetic=1`: to buy the 6 common items at the bottom.
- **New**: The macro now recognizes items like "Seeds, Gears, Eggs" better than before.
### Bug Fixes
- **Fixed**: Resolved the issue where the GamePass window appeared when buying the 3rd egg at the Eggs Shop. If detected, the macro will now repeat the purchase process until it successfully buys the 3rd egg.

## Update Log (V.2.8.E) - ⛲ FARM COSMETICS ⛲
## Removed
- **TimeAPI**: `TimeAPI` has been removed because ***Time.is*** has blocked access to their API service since May 20.
The macro will now rely on your device’s local time.
- 🔸 Important: If your system time does not match the time on `time.is/Canada`, you may experience a delay of 30–60 seconds.
- 🔸 Just make sure the **minutes and seconds** match — the hour doesn’t matter.
## New Features
- **New**: You can now select the Egg you want.
- **New**: You can now choose items from two Moon types (Luna Moon and Blood Moon).
- **New**: You can now receive macro notifications via Discord using `webhookURL`.
- **New**: Added items from the Gear shop.
## New Settings
- **New**: `WalktoGear=18600` - Time taken to walk to the Gear shop.
- **New**: `WalktoEgg=1700` - Time taken to walk to the first Egg.
- **New**: `WalktoMoonShop=8500` - Time taken to walk to the Moon shop.
- **New**: `WalkToMoonShopAllTimes=1` - Always go to the Moon Shop if auto-navigation fails.
- **New**: `PlayNotifySound=1` - Plays a notification sound for the macro.
## Bug Fixes
- **Fixed**: Fixed a series of bugs related to developer-side shutdowns.
- **Total Bugs Fixed**: 54/54 bugs resolved (I had to rewrite the source code again for better optimization).
## Engine
- **Star Engine**: Version `423.2.Ahk`, a custom engine made specifically for this project.
- **BITRAVEN**: Version `Tech 8`, enhanced protection and reduced file size by 86%.
---
> 🙏 **Thanks @k.btyep** for bug reports and Coding support for this update!

## Update Log (V.2.7) - 🩸Blood Moon🌕
## New Features
- **New**: A new macro operation mechanism. I have created an engine based on AutoHotKey version `1.1.37.02`. This will require you to use a 64-bit operating system, but in return, it will run more stably compared to pure AutoHotKey or Python versions, Along with this new engine, the chances of being falsely flagged as a virus will be minimized. However, some cases may still be detected. I'm doing my best to resolve this.

## Bug Fixes
- **Fixed**: Blood Moon Shop

---
> 🙏 **Thanks @viktore And @k.btyep** for bug reports!

## Update Log (V.2.6) - 🩸Blood Moon🌕
## New Features
- **New**: Added a new movement mechanism to the Gear Shop, available for all slots 1>6.  
- **New**: Completely rewrote the entire code system from scratch. T-T My hands hurt so much.  
- **New**: You can now go to the Blood Moon Shop and buy whatever you want.  
- **New**: You can now buy Eggs, but you must equip the Recall Wrench in slot 1 to do so.  
  - When `BuyEgg=1`, it will purchase *all* eggs available in the shop.  
  - You cannot select specific types (Common, Uncommon, Rare, Legendary, Mythical, Bug Egg).  
  - I will look into a solution for this in future updates.  

## Improvements
- **Improved**: Completely revamped the software’s internal mechanism.  
  - It is now better encrypted and significantly faster.  
  - Reduced the false positive rate with antivirus software by **70%**.  
- 🔍 **VirusTotal comparison**:
    - [📥 New Version Detection Report](https://www.virustotal.com/gui/file/0d30f81311359ff9cac4eaab55b2c4d5e7d65154e16eb8da51741abacadf813c/detection)
    - [📦 Old Version 2.5 Detection Report](https://www.virustotal.com/gui/file/9359ef07d0ef12afe53e06d805206aaaabf0cdf738db21a06fa04d73e50a55a6/detection)
    
## Bug Fixes
- **Fixed**: Fixed 5 issues related to the Macro API when connecting to the server.  
- **Fixed**: Fixed 3 rare bugs when running the Macro.  
- **Fixed**: Fixed an issue that occurred when purchasing `Grape Seed` and `Corn Seed` and `Cacao Send`.  

---

> 🙏 **Special thanks to @viktore** for your ideas and bug reports!



## Update Log (V.2.5) - 🐔🧟CHICKEN ZOMBIE🧟🐔
- New: New System `Core.Main.btrv2`.
- Add: BeanStalk Seed
- Remove: Webhook, notify lose connection.
- Remove: System API `Grow.Core.btrv2` and `API.btrv2`.

## Update Log (V.2.4)
- New: The `plugin` folder has been added. Now you can freely create alongside `MainPlugin.ahk`. This is where plugins will run together with the macro.
However, please note that plugins cannot affect the main aiming macro — they only run alongside it.
Feel free to create your own unique plugins!
- Fixed: The spincam issue has been mostly resolved and is now reduced by approximately 70%.
- Add: `Webhook.ini` – This file is used to notify you when you lose connection. Its sole purpose is for that, Like : `webhookURL=https://discord.com/api/webhooks/123/ABC`.
- Add: `RetryMenu=` – This sets the number of times the macro will retry the action to open the shop menu if it fails to appear.
- Soon: Automatically reconnect when the connection is lost.
- Soon: Automatically join the server you've set up with your own Private Servers link each time the macro is launched.

## Update Log (V.2.3.A) - FixPack
- Fixed: 400ms delay for the Gear Seller

## Update Log (V.2.3)
- Add: `API.btrv2` - An external API library for world time has been added, but it may still fail if blocked by antivirus software or a firewall.
- Add: `ClickBuy=` - You can choose the number of mouse clicks, but keep in mind that the higher the number, the greater the delay. 
- Fixed: Spin Cam.
- Fixed: Can't click first dialog in gear shop.
- Remove: "LICENSE.txt" and "Update Log.txt", replace with URL
- Soon: Automatically reconnect when the connection is lost.
- Soon: Automatically join the server you've set up with your own Private Servers link each time the macro is launched.

## Update Log (V.2.2.A) - FixPack 
- T-T Sorry for more update, this is a quick fix pack.
- Fixed: Roblox window misplaced

## Update Log (V.2.2)
- Add: You can now use 'Recall Wrench' to get to the Gear shop easier and faster
Just go to `config.ini` file in `UsingRecallWrench=0` section change the value to `UsingRecallWrench=1` to use this feature if you don't have it then delete `config.ini` file and try running the macro again.

## Update Log (V.2.1)
- Add: debugMode=1 will always be on when first launched
- Add: Debug HotKey.
- Fixed: objHTTP Unable to connect to server, when local computer is not connected to internet.
- API time: add London time.
- time.is/United_States
- time.is/Canada
- time.is/London
- New Q&A:  https://github.com/K-M19/ButAa-Grow.A.Garden-Macro/blob/main/Q&A.md

## Update Log (V.2.0)
- New: The new macro mechanism can work well with all screen sizes.
- New: New seeds and gear have been added from the LUNA update.
- TRY: I'm still trying to help you adjust the image alignment more accurately, but it's quite difficult. You still have to manually fine-tune it. Currently, the macro can only work on Slot 1 and Slot 3.
- Q&A: Why don’t you add auto-collect or auto-buy eggs? – I actually had that in mind, but I found it ineffective because each player's Garden is different. You wouldn't want to lose a beloved rare combo, and neither would I. As for auto-buying eggs, I’m not a big fan of that feature either—but I might give it a try!

## Update Log (V.1.3)
- Add auto Buy Gear Shop

## Update Log (V.1.2)
- Fixed wrong item click to buy.
- Improved restock item recognition mechanism
- Improved reading accuracy with "1920x1080" - 16:9 display in full screen mode

## Update Log (V.1.1)
- Add auto Buy Seeds
