## 🛠️ Update Log (V.3.7) - 🛠️ New purchase checking system 🛠️
### 🧰 New Features
- **Click Buy**: I’ve fine-tuned it so it now automatically detects the purchase button more accurately by scanning nearby colors and pixels.
### 🐞 Fixes
- **Function recursion limit was exceeded**: The function recursion limit has been removed and replaced to prevent repetition when using the macro for over 3 hours.
- **Server**: The number of simultaneous access requests has been increased, now handling up to 600 key access requests per second, compared to the previous limit of **600 total requests in one second**.
- **RAM**: The macro is now limited to using a maximum of **16MB** of **RAM**, preventing it from expanding over time during prolonged use.
- **BITRAVEN**: Aggressive behavior toward debugging tools has been removed, as it could cause errors after several hours of operation.
- **🐞**: **23** hidden bugs have been discovered and fixed.
### 🛠️ Coming Soon
- **Craft Bear BEE!!**: I'm checking to see if it's doable
### ⚙️ Engine
- **MacroMaker-Engine**: Version `550.d2.Ahk`.
- **BITRAVEN**: Version `Tech 9` - Enhances metadata compression, reduces the number of checks, and increases the number of deep scan cycles.
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** for their support on this project!
## 🛠️ Preview (V.3.7) - 🛠️ Preview-Beta 🛠️
### 🧰 New Features
- **UI Navigation**: I created this version for experimental purposes only. Please note that this is the final version and will not receive bug fixes or updates—unless I change my mind (Currently, EggShop does not support UI navigation and still uses click-based mechanics, as this is where I’ve encountered the most bugs.)
- **Main**: I’ve fine-tuned it so it now automatically detects the purchase button more accurately by scanning nearby colors and pixels.
### 🛠️ Coming Soon
- **Craft Bear BEE!!**
### ⚙️ Engine
- **MacroMaker-Engine**: Version `550.d2.Ahk`.
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** for their support on this project!
## 🛠️ Update Log (V.3.6.3) - 🛠️ FixPack 2 🛠️
### 🧰 New Features
- **Core-Files**: Implemented high-compression standard, reducing original size by **84.62%** compared to the previous version.
- **Credits**: Added contributors to the Credits list.
### 🐞 Fixes
- **Save**: Fixed several bugs related to random save issues during certain save attempts.
### 🛠️ Coming Soon
- **UI Navigation**
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** for their support on this project!
## 🛠️ Update Log (V.3.6.2) - 🐝 WORKING BEE ⚙️
### Additions
- **Sugar Apple**
- **Cleaning Spray**
### 🐞 Fixes
- **Made Honey**: Added 30 extra loops to the honey generator to avoid infinite loops (it was still looping endlessly on "Made Honey Only").
- **Server**: Fixed an issue preventing key activation in certain countries.
- **Webhook**: Adjusted for slightly faster response times.
- **Ping**: No more random ping spam! The macro now only notifies for the following items:
  - **Seeds**: Divine, Prismatic
  - **Gears**: Godly Sprinkler, Lightning Rod, Master Sprinkler
  - **Bee Queen**: Bee-Egg, Honey Sprinkler, Nectar Staff, Pollen Radar
  - **Eggs**: Bug-Egg, Mythical-Egg
### 🛠️ Coming Soon
- **UI Navigation**
---
> 🙏 **Special thanks** to *( astr1x._. | meisboredd | deltacenzo. | somerandomidot )* for the bug reports and suggestions!  
> 🤝 Big thanks to the **Microsoft Windows Defender Team** for their support on this project!
## 🛠️ Update Log IMB - (V.3.6.1) - IMB-Endcode 🛠️
### 🐞 Fixes
- **False Positive Warning**:  
  I have contacted the **Microsoft Windows Defender Team**, and they suggested using a new encoding method called **IMB-Endcode** to build my software.  
  I've integrated this new encoding approach. According to them, it helps reduce false positives significantly.  
  While I can't guarantee its effectiveness 100%, I tested it on two emulators using Windows 10 (19045.6029) and Windows 11 (26100.4351) - both 64-bit, and the software was **not flagged** as a virus.
### 🧰 Solution
If your software is still being flagged as a virus, try the following:
1. Make sure your Windows is up to date.
2. Use these commands to manually update Windows Defender:
   ```cmd
   cd "C:\Program Files\Windows Defender"
   MpCmdRun.exe -removedefinitions -dynamicsignatures
   MpCmdRun.exe -SignatureUpdate
### 🙏 Thanks & Apologies
>Huge thanks to the Microsoft Windows Defender Team for their guidance and support on the new encoding method.

>Apologies to all users affected by the false threat alert from the previous update (V.3.6.1).
---
> 🤝 Thanks to the **Microsoft Windows Defender Team** for supporting this project!
## Update Log (V.3.6.1) - 🛠️ FixPack 1 🛠️
### Bug Fixes
- **Refresh ID**: This issue was fixed during the build process.
---
> 🤝 Thanks to the **Microsoft Windows Defender Team** for supporting this project!
## Update Log (V.3.6) - 🛠️ Rework 🛠️
### New Features
- **SpeedMode**: Redesigned speed settings with adjustable options in the settings tab.
- **Anti-Menu**: The macro now auto SyncCams when stuck in a menu with first-person view.
- **Patterns**: Fully customizable to suit your preferences — familiar if you've used Natro-Macro before.
- **Webhook**: Rebuilt; now pings yourself when all items are successfully purchased.
- **Multi-Instance**:
  - Reworked to better and more accurately detect Roblox (only works with native Roblox, not Microsoft Roblox. I recommend using **Bloxstrap** since this was tested with it).
  - Added an infinite loop feature when using more than 2 multi-instances.
- **Made Honey**: Reworked for smoother and faster performance.
- **DevZone**: Added more features for tinkering and experimentation.
### Bug Fixes
- **Shop - Buy**: Fixed bugs related to buying the wrong or incorrect item.
  - *(Note: this wasn't caused by the macro itself but due to a 3px UI shift in the game menu, which misled the macro — it has now been slightly optimized).*
---
### Engine
- **MacroMaker-Engine**: Version `539.T1.Ahk`.
> 🤝 Thanks to the **Microsoft Windows Defender Team** for supporting this project!
## Update Log (V.3.5) - 🖥️🖥️ Multi-Instance 🖥️🖥️🖥️
### New Features
- **Multi-Instance**: Now available, supporting a maximum of 5 accounts. (Ensure all accounts have a Recall Wrench for smooth operation.) You must enable DevZone before use otherwise, it will be disabled by default.
- **Save-Times**: Turn this off if you don't want to return to EggShop or QueenBee every run. It will return after 30 minutes from the first run.
- **Save-Times**: Ensure your computer's time matches (https://time.is/Canada). Only the minutes need to match, the hour is not important.
### Bug Fixes
- **Fixed**: Fixed an issue where the wrong item was purchased (at the gears shop for Friendship Pot).
## Engine
- **MacroMaker-Engine**: Version `516.R0.Ahk`.
---
> 🤝 Thanks to the **Microsoft Windows Defender Team** for supporting this project!
## Update Log (V.3.4.1) - 🛠️ FixPack 1 🛠️
### Bug Fixes
- **Fixed**: The issue is related to the second run when reaching the Gear Shop.
- **Fixed**: Performance optimization was not smooth, but it has been fixed. The macro now runs 16% faster.
### Sorry
- I apologize for the poor 3.4 update. I had to update the macro while sleep-deprived and without proper benchmarking.
---
> 🤝 Thanks to the **Microsoft Windows Defender Team** for supporting this project!
## Update Log (V.3.4) - 🍯BIZZY BEES - Part 2🐝
### New Features
- **New**: Added new items in the BIZZY BEES - Part 2 event.
- **New**: Made Honey Only – Only use this if you have too many Pollinate mutations.
### Bug Fixes
- **Fixed**: All lingering issues from version `V.3.3` have been fully resolved.
## Engine
- **MacroMaker-Engine**: Version `503.Q4.Ahk`.
- **BITRAVEN**: Version `Tech 8.2` – Will retaliate when under threat. Don’t worry, it’s not hostile, but it will react when provoked (e.g., unpacking, reverse engineering, debugging).
---
> 🤝 Thanks to the **Microsoft Windows Defender Team** for supporting this project!
## Update Log (V.3.3.3) - 🛠️ FixPack 3 🛠️
### New Features
- **New**: Reworked the macro operation workflow.
- **New**: Redesigned the testing process in the DevZone tab.
### Bug Fixes
- **Fixed**: Issue related to the player's camera malfunctioning, preventing zoom or control.
- **Fixed**: Bug causing unintended item holding.
- **Fixed**: Movement errors caused by incorrect macro actions.
- **Fixed**: Hidden item issue in the recent update, which caused the macro to be unable to purchase items located at the bottom.
## Engine
- **MacroMaker-Engine**: Version `500.c1.Ahk`.
---
> 🙏 **Thanks @viktore** for bug reports!
> 🤝 Thanks to the **Microsoft Windows Defender Team** for supporting this project!

## Update Log (V.3.3.FixP2) - 🛠️ FixPack 2 🛠️
### Bug Fixes
- **Fixed**: A bug where Fruit wasn't delivered to Onett and instead automatically returned to the Garden (Part 2 T-T).
---
> 🤝 Thanks to the **Microsoft Windows Defender Team** for supporting this project!

## Update Log (V.3.3.FixP1) - 🛠️ FixPack 🛠️
### Bug Fixes
- **Fixed**: The Onett area was inaccurate.
- **Fixed**: A bug where Fruit wasn't delivered to Onett and instead automatically returned to the Garden.
- **Fixed**: Multiple issues related to poor performance have been resolved.
### Quality
- **Using RecallWrench**: (Only works if all Cosmetics are Off) Reduces the use of the **Recall Wrench** to a minimum. If you enable **Using RecallWrench** after shopping at the Gears Shop, the macro will not return to the Garden but will instead continue buying eggs without going back.
## Engine
- **MacroMaker-Engine**: Version `495.c2.Ahk`.
---
> 🤝 Thanks to the **Microsoft Windows Defender Team** for supporting this project!

## Update Log (V.3.3) -❤️Quality of Life❤️
### New Features
- **New**: Automatically join your private server with a single click — this is optimized for low-resource devices such as Pi3 or Pi4.
- **New**: Automatically obtains the `Recall Wrench` on first startup.
#### How to use
- 1. Copy your Private Server Link, which will look like this: `https://www.roblox.com/share?code=a4258b09fd2383665590b1d5cf0fbc&type=Server`
- 2. Open that link in your browser, it will redirect to a proper link like: `https://www.roblox.com/games/126884695634066/Grow-a-Garden?privateServerLinkCode=95114022801656566223897662112`
- 3. Copy and paste that final link into the Private Server field in the Settings tab.
- 4. Click the Join button to test.
### Microsoft Windows Defender Team  
I sincerely thank the **Microsoft Windows Defender Team** for allowing this macro to run safely on **Windows 10 and 11** systems.  
Thank you for your support — it is truly appreciated.  
(*Please make sure your Windows Defender is updated to the latest version to ensure this applies properly, if necessary.*)

## Update Log (V.3.2) - 🍯Onett-Day🐝
### Removed
- **Forced Update**: The macro no longer forces you to use the latest version. You can now use older versions freely without being locked out. However, a notification window for the new update will always appear each time the macro starts or reloads.
- **HotKeyDebug**
- **WalkToMoonShopAllTimes**: Back Soon!
### New Features
- **New**: Time to Bee Swarm
- **New**: Hello Onett (Automatically generates Honey on each run — Note: You must have the Pollinate mutation in your Backpack)
- **New**: UI changes
- **New**: Added `DevZone` under `Settings` (A section with debugging tools to help you inspect and use them more easily) - Activate and reload to enter Developer mode.
### Bug Fixes
- **Fixed**: Movement bug caused by periodic changes in map sizes.
## Engine
- **MacroMaker-Engine**: Version `463.1.Ahk`.
- **BITRAVEN**: Version `Tech 8.1`.
### Microsoft Windows Defender Team  
I sincerely thank the **Microsoft Windows Defender Team** for allowing this macro to run safely on **Windows 10 and 11** systems.  
Thank you for your support — it is truly appreciated.  
(*Please make sure your Windows Defender is updated to the latest version to ensure this applies properly, if necessary.*)
---
> 🙏 **Thanks @k.btyep** for Coding support for this update!  
> 🙏 **Thanks @Ryan✈** for the suggestion!


## Update Log (V.3.1) - 🍯BIZZY BEES🐝
### Removed
- **AutoRejoin**: Removed due to lack of usefulness. It often caused errors on slower machines, such as those using HDDs or experiencing lag, and also increased false positives.
### New Features
- **New**: Time to Bee Swarm
- **New**: The macro no longer requires you to open Roblox beforehand. Instead, it will now prompt you to open Roblox before proceeding.
- **New**: I should’ve done this a long time ago—now every time you start the macro, it runs immediately without waiting for real-time delays.
- **New**: Debug Hot Keys have been changed from F1 > F7 to Ctrl+F1 > Ctrl+F7.
- **New**: Config files have been separated to make management and customization easier.
### Bug Fixes
- **Fixed**: Movement bug caused by periodically changing map sizes.
---
> 🙏 **Thanks @k.btyep** for Coding support for this update!
> 🙏 **Thanks @Ryan✈** for bug reports!

## Update Log (V.3.0.P1) - 🛠️ FixPack 🛠️
### Bug Fixes
- **Fixed**: Reworked the new walking mechanism after the game was updated and the map size changed for the fourth time.

## Update Log (V.3.0) - 🛠️ UI And AutoRejoin 🛠️
### New Features
- **New**: You can now select items more easily with the new UI.
- **New**: You can use `AutoRejoin` with the UI configuration.  
  Make sure `AutoRejoin` is enabled in the UI settings. This feature requires configuration in the `PSConfig.ini` file:
  - `PrivateServerLink=` is where you insert your Private Server link. Open the link in your browser first, then copy and paste it here.  
    **Example**:`https://www.roblox.com/games/126884695634066/Grow-a-Garden?privateServerLinkCode=452676255653203881808469`
  - `webhookURL=` is where you'll receive notifications if AutoRejoin is successful or not.
---
> 🙏 **Thanks @k.btyep** for Coding support for this update!

## Update Log (V.2.9) - ⛲ FARM COSMETICS 🛠️
**Author Update: k.btyep**
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
