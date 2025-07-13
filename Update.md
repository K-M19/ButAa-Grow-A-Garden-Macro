# 🛠️ Update Log (4.6.2) – 🛠️ Fixpack ⚙️
## 🧰 New Features
* **Changed event area movement mechanism**: Reintroduced the default walking system as before.
## 🐛 Fixes
* **Anti-Menu**: Anti-Menu can now detect the "Dino-Quests" menu.
## 🗑️ Removed Features 
* **ClickToMove**: So SUCKS!
* **Radar Pollen**: Removed Radar Pollen from Slot 2 when auto Set-Items is used.
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.6.1) – 🛠️ Fixpack ⚙️
## 🐛 Fixes
* **Fixed issue where reconnection failed during operation**
* **Fixed missing `Mrd.dll` resource on ARM64 systems**
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.6) – 🐾PET MUTATIONS🧬 ??.. OK..
## 🧰 New Features
* **Auto-Rejoin**: When you lose connection, the Macro will automatically kill Roblox, then run the server link you've provided to reconnect to your specified server.
* **Corn Seed**
* **Giant Pinecone Seed**
* **Medium Toy**
* **Medium Treat**
* **Added 4 new Seeds for Crafting**
* **Added 2 new Tools for Crafting**
* **Added 1 new Event Crafting Recipe**
* **Modified the travel logic to the new Event Zone**: Honestly... it's still the same, but *kinda* different... 
> See the sunset!!!!!
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.5.4) – 🛠️ Fixpack ⚙️
## 🧰 New Features
* **Status Notification**: A dedicated status popup to help you keep track of how many times you've successfully **bought** or **Crafting**.  
  (Only successful purchases and crafting actions are counted.)
## 🐛 Fixes
* **Fixed Status Notification bugs**:  
  The Status Notification is now more stable and can be used with **Loop-Runners** & **Multi-Instance** setups.  
  > ⚠️ **Multi-Instance**: May behave slightly incorrectly, as it merges all instances into one unified status instead of separating them individually.
* **Added required modules for ARM64 support**
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.5.3) – 🛠️ Massive Fixpack ⚙️
## 🧰 New Features
* **Implemented Pixel Verification Mechanism to enhance accuracy when purchasing Eggs.**
## Big 🐛 
* **Fixed incorrect Egg purchases and false notifications.**
* **Resolved slot recognition and ordering issues.**
* **Fixed unintended item clicks during the purchasing process.**
* **Fixed failure to purchase required items.**
* **Corrected Crafting system selecting the wrong item.**
* **Fixed issue where Recall Wrench could not be used.**
* **Resolved DNS-related delay when connecting to servers.**
* **Fixed inability to close with Esc key during straight path alignment.**
* **Resolved Roblox input issues when the character doesn't move:**  
  The macro will now attempt to resend input up to 3 times.
* **Fixed random macro crashes and automatic restarts after 5 attempts.**
* **Fixed CallBack errors from `.btrv2` directory.**
* **Fixed missing 'Enter' key presses when searching for item names.**
* **Fixed missing pixel or image files required for comparison.**
* **Fixed macro continuously reloading unexpectedly.**
* **Fixed incorrect click positions when using ClickToMove.**
* **Fixed inability to run Roblox in windowed mode.**
## 🗑️ Removed Features 
* **ColorVEgg**
## ⚙️ MacroMaker Engine (623.N9)
* **Upgraded to .NET 9.0 and Python 3.13.5 — All required libraries and DLLs have been embedded for seamless operation without additional installations.**
* **Docker is now integrated into the core library file. This increases the total size by ~3MB, but remains within acceptable limits.**
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.5.2) – 🛠️ Fixpack ⚙️
## 🐛 Fixes  
* **Fixed the Click to Move mechanism when claiming Dinosaur Egg**: The movement mechanism was updated because players were standing *on* the lab table instead of *next to* it. I’ve modified it so that when the player stands near the lab table, the macro will zoom the camera to the optimal movement range and continue the interaction as originally intended.
## 🗑️ Removed Features  
* **Do Dinosaur Egg (All Times)**: It is now synchronized with **Save-Times**
---
> 🙏 **Special thanks** to *( omsimized6175 )* for the bug reports!  
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.5.1) – 🦖Auto Dinosaur Egg🥚
## 🧰 New Features
* **Dinosaur Egg**: It will collect all Pets from **Common** eggs and exchange them automatically. However, you can still get other desired pets by entering their names manually!
* **Do Dinosaur Egg (All Times)**: Always goes to the exchange house to trade for a Dinosaur Egg. You need to enable **Dinosaur Egg** before using this feature.
## 🐛 Fixes
* **Fixed movement range offset**: Resolved an issue where the macro accidentally shifted the camera when using Click To Move.
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.5) – 🦖PREHISTORIC🦴
## 🧰 New Features
* **Brought back old Seeds and added a new type**
* **Changed the event area travel mechanism to use Click to Move**
* **Added crafting list from the archaeologist**
## 🗑️ Removed Features
* **Removed 3 eggs that no longer appear in the shop**
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.4.1) – 🛠️ Fixpack ⚙️
## 🧰 New Features
* **Harvest (All Times)**: This has been integrated. If you enable both **Summer Harvest** and **Harvest (All Times)**, the macro will skip the time condition and will always go to the zone and place the fruits in the cart on every run.
## 🐛 Fixes
* **Fixed issue where Summer Harvest event was not detected**: Initially, I used a strict color recognition mechanism to detect the event, but now I’ve switched to checking your computer’s time. The event will begin at **00:00** and end at **00:11**.
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.4) – 🖥️ Multi-Instance & Checking Search 🔎
> [!WARNING]  
> This upgrade works ideally only when using the following configuration: (Display: 1920x1080 & 100% Scale) (Roblox Font: Default).
## 🧰 New Features
* **Loop-Runners**: Continuous running mode — the macro won't wait for the shop to restock, it will just keep going!
* **Multi-Instance**: Brought back with a simplified design, now supports up to 5 instances. I’ll increase this to 10 if it performs well. You must enable DevZone to access this feature.
* **New Checking Search**: The macro now uses a built-in image library to improve search accuracy. **However, you must use Roblox’s default font to maximize detection accuracy.**
## 🐛 Fixes
* **Fetching CommonEgg**: With the new search mechanism, the macro can now detect **CommonEgg** more precisely and will place it in **Slot 3**.
* **Fixed DNS error when connecting to Cloudflare servers**
* **Fixed OpenSSL connecting to Cloudflare servers**
* **Fixed issue where you couldn’t be pinged when purchasing items**
* **Fixed macro crash when the macro’s _Cache memory reached its limit**
## 🗑️ Removed Features
* **Anti-Menu**: This has been removed and will be replaced with a better feature that improves search accuracy and handles menus and filtering more effectively.
## ⚙️ MacroMaker Engine (615.K4)
*  **Uses fewer system resources — no more temporary _Cache files or excessive RAM usage. RAM usage is significantly reduced, and the _Cache will auto-delete after each run.**
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.3.1) – 🛠️ Fixpack ⚙️
## 🧰 New Features
* **Lock Window**: The "Lock Window" feature locks the window at a fixed position `(X.0, Y.0)`. You can disable it to freely move the window.
* **32-character Server Link**: When this notification appears, it will redirect you to a detailed tutorial.
## 🐛 Fixes
* **Fetching CommonEgg**: The macro now fetches the **CommonEgg** and places it in **slot 5**. When crafting, the macro will take the Egg from slot 5 to perform the crafting process.
### 🛠️ Coming Soon
* **Travelling Merchants (Sky Merchant)**: I'm testing whether automatic questing is feasible.
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.3) – 🐝 Bee-Egg 🥚
## 🧰 New Features
* **BeeEgg has been added**: I just got the image data for this egg...
* **ColorVEgg has been added**:  
  `ColorVEgg` is an advanced image recognition feature.  
  It analyzes the image and closely matches the color of the creature inside the Egg more accurately.  
  You can increase or decrease its value — the maximum is `100`.
## 🤞 Hopefully the last Fixpack or Update of the week xD - X2..
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.2.2) – 🛠️ Fixpack 2 ⚙️
## 🐛 Fixes
* **Fixed Anti-Menu not detecting Sumer-Rewards**
* **Debug Log Viewer is no longer AlwaysOnTop**: The Debug Log Viewer is no longer in AlwaysOnTop mode. Some users found it annoying, so I’ve disabled it.
## 🤞 Hopefully the last Fixpack of the week xD
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.2.1) – 🛠️ Fixpack ⚙️
## 🐛 Fixes
* **Fixed the issue where `Save-Times` would automatically switch to inactive mode**: `Save-Times` is now off by default. It helps you return to the EggShop, Crafting, or Event every 30 minutes.
* **Fixed the issue where `Common Egg` could not be retrieved due to conflict with `Common Summer Egg`**: Now on first launch, the macro will take both the `Common Summer Egg` and `Uncommon Egg` and place them into slots 3–4.
* **Fixed the issue with retrieving keys from the Cloudflare server**: The reason keys weren’t being received was because I didn’t raise the key distribution rate. It was stuck at 50 keys/second. I apologize for that — the new maximum is now 750 keys per second.
* **Updated the message `Please open Roblox and join a game to scan the windows!` with a more detailed one, including error code `0P1-PGA-0001`.**
* **Improved debug log messages from Crafting and Speed-Mode for clearer and more concise information**: Currently, `Speed-Mode` is locked and the allowed speed is `MediumMode`.
* **Added a button linking the `List of Donors` to the `Discord` server.**
## I'm still actively hunting bugs 🐛 👀
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.2) – ☀️MEGA HARVEST☀️
## 🧰 New Features
* **Added 2 new seeds in Tom's Shop**
* **Added 8 items from the Summer Shop**
* **Added 3 items from Crafting Seeds**
* **Added 1 item from Crafting Tools**
* **Now capable of detecting the Mega Harvest event**
## 🐛 Bug Fixes
* **Fixed an issue where Debug Log Viewer did not record logs**
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.1.1) – 🛠️ Fixpack ⚙️
## 🧰 New Features
* **Added Test Reconnect buttons and Time-wait**
  *TimeWaitBackGame is a waiting feature triggered when the macro successfully reconnects to the game. This ensures the game is fully loaded before the next execution cycle begins. The default value is `35000`, which equals a 35-second delay.*
## 🐛 Bug Fixes
* **Macro randomly crashed when using Auto-Reconnect**
  *This issue has been fixed. It occurred during the second or third reconnection attempt using Auto-Reconnect.*
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.1) – 🛠️ Upgrade Pack 🛠️
> [!WARNING]  
> This upgrade works ideally only when using the following configuration: (Display: 1920x1080 & 100% Scale) (Roblox Font: Default).
### 🐱 New Cat!
## 🧰 New Features
* **Debug Log Viewer**: This is a new debug inspection tool that displays a real-time debug window, making it easier for you and me to track down errors.  
  *You can find this feature in the Developer-Zone.*
* **Map Patterns**: A button has been added to take you to a sketch map of the game and the Patterns Map.
## 🛠️ Upgrade
* **Improved image recognition**  
  *Now the macro can detect images, but you must use Roblox's default font. If you use a custom font, it might cause issues.*
* **Auto-adjust Roblox settings**  
  *With this new image recognition capability, the macro reduces incorrect mode detection. It will now automatically set the required parameters on each run, eliminating configuration issues.*  
  *(Warning: You need to use Roblox’s default font for this feature to work correctly.)*
* **Auto-Rejoin replaced by Auto-Reconnect**  
  *With this update, Auto-Rejoin has been replaced by Auto-Reconnect. Many users couldn’t correctly obtain the 32-character Server Link even with detailed instructions, so I replaced the method. You no longer need the 32-character link—this feature is now enabled by default.*
## 🐛 Bug Fixes
* **Reclaimer Crafting**: Fixed an issue with incorrect items being used during crafting, related to locating the Common Egg.
* **Unable to end search**: Resolved the issue where searches couldn’t be completed by simulating an `Enter` key press after each search.
## ⚙️ MacroMaker Engine (608.L2)
*Enhanced recognition and image scanning across multiple threads.*
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (4.0) – 🧑‍🌾 Auto Summer Harvest & Huge Fixpack ⚙️
### 🐱 New Cat!
## 🧰 New Features
* **Added automatic Summer Harvest when the event begins**  
  *(Note: Enabling this feature may cause you to miss 2 store restocks)*
* **During the Summer Harvest event, you can freely configure which fruits are delivered**  
  You can adjust this in the **DevZone tab** or via the `FruitsConfig.ini` file.  
  *(Warning: Errors may occur if the selected fruits are currently marked as favorites in-game.)*
## 🐛 Bug Fixes
* **Fixed several bugs related to server communication and key registration issues**
## ⚙️ MacroMaker Engine (601.2b)
* **Retuned the Engine for this update**  
  Added several improvements to ensure a more stable and secure connection with the server.
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** and **Cloudflare** for their support on this project!
# 🛠️ Update Log (v3.9.2) – ⚙️Huge Fixpack & Full List Crafting 🚜
### 🐱New Cat!
## 🧰 New Features
* **Add Full List: Crafting Seeds**
* **Add Full List: Crafting Tools**
* **Added success and failure notifications during the crafting process!**
## 🐛 Bug Fixes
* **Fixed**: Fixed an issue where Onett settings could not be saved and the macro failed to travel to Onett.
* **Fixed**: Resolved an issue related to retrying the crafting process — previously, it returned to the Garden but didn’t go back to Crafting.
* **Fixed**: Fixed an issue with egg checking when purchasing, which caused the macro to fail detecting certain egg types under specific conditions.
* **Fixed**: And 12 additional reported bugs have been completely fixed (hopefully for good).
### 🧑‍🌾 SUMMER EVENT QUEST has been removed
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** for their support on this project!
# 🛠️ Update Log (v3.9.1) – ☀️SUMMER EGG🐣
### 🐱 More Cat!
## 🧰 New Features
* **Common Summer Egg**
* **Rare Summer Egg**
* **Paradise Egg**
## 🐛 Bug Fixes
* **Fixed**: Resolved a large number of bugs related to input lag and macro operations.
### 🛠️ Coming Soon
* **SUMMER EVENT QUEST**: I'm testing whether automatic questing is feasible.
> 🙏 **Special thanks** to *( SolKyo | Todoto )* for providing information on the Summer Egg types!
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** for their support on this project!
# 🛠️ Update Log (v3.9) – ☀️SUMMER UPDATE🏖️
### 🐱 More Cat!
## 🧰 New Features
* **Summer Seed**
* **Added Gears**
* **Added Crafting: Lightning Rod**
## 🐛 Bug Fixes
* **Fixed**: Several issues related to pathfinding to Crafting areas and the Onett zone.
* **Fixed**: Multiple issues related to the macro core system.
### 🛠️ Coming Soon
* **SUMMER EVENT QUEST**: I'm testing whether automatic questing is feasible.
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** for their support on this project!
# 🛠️ Update Log (v3.8.4) – 🌎 Map Changes 🌎
### More Cat!
## 🐛 Bug Fixes
* Fixed: Walking mechanism bug caused by the game's map changes has been resolved.
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** for their support on this project!
# 🛠️ Update Log (v3.8.3) – Bug fixes for search and Add-on Shop 🛠️
## 🔑 KeyFile Removed
* The keyfile has been removed.
## 🐛 Bug Fixes
* Fixed: Changed the search term for the item `Clening Spray` to `Clening`.
* Fixed: Resolved the issue where the camera got stuck in first-person view when entering the Add-on Shop menu.
## ⚙️ MacroMaker Engine
* Reverted to MacroMaker Engine 1 `587.c6.Ahk`
  - Added dynamic URL mechanism for flexible validation.
  - Implemented automatic cross-checking of the key.
> 🙏 **Special thanks** to *( pok_noob1123_96236 | duramo. | Todoto | MoeeewwZyy )* for the bug reports and suggestions!  
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** for their support on this project!
# 🛠️ Update Log (v3.8.2) 🛠️ Recursion limit was exceeded part 2 🛠️
## 🐛 Bug Fixes
* Fixed:  Continued fixing the **Function recursion limit was exceeded** error part 2.
## ⚙️ MacroMaker Engine
* Back MacroMaker Engine 1 `556.h4.Ahk`
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** for their support on this project!
# 🛠️ Update Log (v3.8.1) 🛠️ More Auto Crafting🛠️
## 🧰 New Features
* **Roblox Windows**: The macro no longer locks the window position, you can now move the window anywhere you like.
### 🐝 Bear-Bee Items
* **Mutation Spray Choc**
* **Mutation Spray Pollinated**
* **Mutation Spray Shocked**
---
## 🐛 Bug Fixes
* Fixed:  Continued fixing the **Function recursion limit was exceeded** error.
---
## 🖥️ Multi-Instance Removed
* I’ll be focusing on the core features of the macro instead of juggling extra functions like before. If you want to use Multi-Instance, consider using an older version or switching to "RDP".
---
## ⚙️ MacroMaker Engine 2
### Version: `560.8`
* The macro now uses all CPU cores for operation, boosting performance compared to the old version, which used only a single core.
You can now:
* Use the **MacroMaker toolkit** in the `core/` folder to build your own AutoHotkey commands.
* Benefit from **AutoHotkey v1.1** for easier scripting.
> ⚠️ Version 2.0 of the engine is still under development. Release date is currently unknown.
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** for their support on this project!
# 🛠️ Update Log (v3.8) - 🛠️ Auto Crafting & MacroMaker Engine🛠️ 
## 🧰 New Features
### 📦 Crafting Bench
* **Crafters Seed Pack**
### 🐝 Bear-Bee Items
* **Tropical Mist Sprinkler**
* **Berry Blusher Sprinkler**
* **Spice Spritzer Sprinkler**
* **Sweet Soaker Sprinkler**
* **Flower Froster Sprinkler**
* **Stalk Sprout Sprinkler**
* **Anti-Bee**
> 🚧 *This system is currently experimental. More items will be added in future updates.*
### 💸 Donate
* A donation link to Roblox is being added.
* If you enjoy using this macro, feel free to support me with a donation \:D
---
## 🐛 Bug Fixes
* Fixed: **Function recursion limit was exceeded**
---
## ⚙️ MacroMaker Engine
### Version: `556.h4.Ahk`
* MacroMaker-Engine is now **separated from the main AutoHotkey branch**.
* **Python integration** allows for more flexibility and extended functionality.
* **Officially registered and protected** after 7 years (2018–2025).
* This is the **first public version** using the new engine.
You can now:
* Use the **MacroMaker toolkit** in the `core/` folder to build your own AutoHotkey commands.
* Benefit from **AutoHotkey v1.1** for easier scripting.
> ⚠️ Version 2.0 of the engine is still under development. Release date is currently unknown.
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** for their support on this project!
## 🛠️ Update Log (V.3.7) - 🛠️ New purchase checking system 🛠️
### 🧰 New Features
- **Click Buy**: I’ve fine-tuned it so it now automatically detects the purchase button more accurately by scanning nearby colors and pixels.
### 🐛 Fixes
- **Function recursion limit was exceeded**: The function recursion limit has been removed and replaced to prevent repetition when using the macro for over 3 hours.
- **Server**: The number of simultaneous access requests has been increased, now handling up to 600 key access requests per second, compared to the previous limit of **600 total requests in one second**.
- **RAM**: The macro is now limited to using a maximum of **16MB** of **RAM**, preventing it from expanding over time during prolonged use.
- **BITRAVEN**: Aggressive behavior toward debugging tools has been removed, as it could cause errors after several hours of operation.
- **🐛**: **23** hidden bugs have been discovered and fixed.
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
### 🐛 Fixes
- **Save**: Fixed several bugs related to random save issues during certain save attempts.
### 🛠️ Coming Soon
- **UI Navigation**
---
> 🤝 Big thanks to the **Microsoft Windows Defender Team** for their support on this project!
## 🛠️ Update Log (V.3.6.2) - 🐝 WORKING BEE ⚙️
### Additions
- **Sugar Apple**
- **Cleaning Spray**
### 🐛 Fixes
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
### 🐛 Fixes
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
