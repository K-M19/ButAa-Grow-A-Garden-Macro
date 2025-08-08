#SingleInstance force
#NoEnv
#Persistent
#NoTrayIcon
global CarrotSeed := "0"
global StrawberrySeed := "0"
global BlueberrySeed := "0"
global OrangeTulip := "0"
global TomatoSeed := "0"
global CornSeed := "0"
global DaffodilSeed := "0"
global WatermelonSeed := "0"
global PumpkinSeed := "0"
global AppleSeed := "0"
global BambooSeed := "0"
global CoconutSeed := "0"
global CactusSeed := "0"
global DragonFruitSeed := "0"
global MangoSeed := "0"
global GrapeSeed := "0"
global MushroomSeed := "0"
global PepperSeed := "0"
global CacaoSeed := "0"
global BeanStalkSeed := "0"
global EmberLilySeed := "0"
global SugarApple := "0"
global WateringCan := "0"
global Trowel := "0"
global RecallWrench := "0"
global BasicSprinkler := "0"
global AdvancedSprinkler := "0"
global GodlySprinkler := "0"
global LighningRod := "0"
global MasterSprinkler := "0"
global CleaningSpray := "0"
global FavoriteTool := "0"
global HarvestTool := "0"
global FriendShipPot := "0"
global CommonEgg := "0"
global UncommonEgg := "0"
global RareEgg := "0"
global LegendaryEgg := "0"
global MythicalEgg := "0"
global BugEgg := "0"
global HelloOnett := "0"
global FlowerSeedPack := "0"
global LavenderSeed := "0"
global NectarShadeSeed := "0"
global NectarineSeed := "0"
global HiveFruitSeed := "0"
global PollenRadar := "0"
global NectarStaff := "0"
global HoneySprinkler := "0"
global BeeEgg := "0"
global BeeCrate := "0"
global HoneyComb := "0"
global BeeChair := "0"
global HoneyTorch := "0"
global HoneyWalkway := "0"
global BuyAllTopCosmetic := "0"
global BuyAllDownCosmetic := "0"
global UsingRecallWrench := "1"
global WalktoEggToEgg := "200"
global WalktoCosmeticShop := "780"
global WalktoGear := "18630"
global WalktoEgg := "1770"
global TyepIcon := A_ScriptDir . "\Core\images\Tyep.ico"
global KM19Icon := A_ScriptDir . "\Core\images\K-M19.ico"
global DevZone := "0"
global DelayAllSystem := "320"
global AutoSyncCam := "1"
global AutoRejoin := "0"
global PrivateServersLink :=
global NoBrowser := "1"
global ClickBuy := "25"
global debugMode := "1"
global PlayNotifySound := "1"
global CheckerRun := "1"
global Usingwebhook := "0"
global SaveTime := "1"
global webhookURL :=
global discordUserID :=
global PingSelected
global Up246 := "Up"
global Down135 := "Down"
global MapFolderUp := A_ScriptDir . "\Patterns\Up"
global MapFolderDown := A_ScriptDir . "\Patterns\Down"
global configFile := A_ScriptDir "\Config\Config.ini"
global controlFile := A_ScriptDir "\Config\Control.ini"
global DevZoneFile := A_ScriptDir "\Config\DevZone.ini"
global UserConfigFile := A_ScriptDir "\Config\UserConfig.ini"
global CosmeticShop := "0"
global EggIsBuy := "0"
global GearShop := "0"
global SeedShop := "0"
global attempts := "0"
global WalkToEventZone := "0"
global BackPackIsCleen := "0"
global GetStartt := "0"
global SyncFPS := "0"
global CheckIDRefresh := "0"
global 30MStonkShopNow := "1"
global MacroIsRun := "1"
global AntiMenu := "1"
global WaitMenuSeedsShop := "2000"
global SpeedWheelDown := "5"
global SpeedWheelUp := "5"
global WheelUpTimes := "25"
global running := false
global isCheckingTime := false
global lastMacroRun := ""
global lastStonkTrigger := ""
IfNotExist, %A_ScriptDir%\Config
    FileCreateDir, %A_ScriptDir%\Config
IfNotExist, %A_ScriptDir%\Patterns
    FileCreateDir, %A_ScriptDir%\Patterns
IfNotExist, %A_ScriptDir%\Patterns\Down
    FileCreateDir, %A_ScriptDir%\Patterns\Down
IfNotExist, %A_ScriptDir%\Patterns\Up
    FileCreateDir, %A_ScriptDir%\Patterns\Up
if !FileExist(configFile)
{
    SaveConfig()
}
LogDebug(msg) {
    global debugMode
    static isInside
    if (!debugMode or isInside)
        return
    isInside := true
    FormatTime, timestamp, %A_Now%, yyyy-MM-dd HH:mm:ss
    line := timestamp . " - " . msg . "`n"
    FileAppendSafe(line, "*MacroDebugLog.txt")
    isInside := false
}
FileAppendSafe(line, filePath) {
    try {
        FileAppend, %line%, %filePath%
    }
}
SendWebhook(msg, name := "ButAa-Macro", avatar := "https://furbox-studio.netlify.app/plugin/webhookurl/gag/icon/icon.png") {
    global webhookURL
    static isInside
    if (isInside)
        return
    isInside := true
    FormatTime, timestamp,, yyyy-MM-dd HH:mm:ss
    msg := StrReplace(msg, "\", "\\")
    msg := StrReplace(msg, """", "\""")
    msg := StrReplace(msg, "`n", "\n")
    msg := StrReplace(msg, "`r", "")
    json := "{"
        . """content"":""[" timestamp "] " msg ""","
        . """username"":""" name ""","
        . """avatar_url"":""" avatar """"
        . "}"
    try {
        http := ComObjCreate("WinHttp.WinHttpRequest.5.1")
        http.Open("POST", webhookURL, false)
        http.SetRequestHeader("Content-Type", "application/json")
        http.Send(json)
    } catch e {
        FormatTime, timestamp,, yyyy-MM-dd HH:mm:ss
        FileAppend, %timestamp% - WebhookError: %e%`n, *MacroDebugLog.txt
    }
    isInside := false
}
robloxwindowsmini() {
    static isInside
    if (isInside)
        return
    isInside := true
    WinActivate, ahk_exe RobloxPlayerBeta.exe
    DetectHiddenWindows, On
    IfWinExist, Roblox
    {
        WinActivate
        WinMove, , , , , 800, 599
    }
    isInside := false
}
LoadDevZone(){
    IniRead, DevZone, %DevZoneFile%, DevZone, DevZone
    IniRead, DelayAllSystem, %DevZoneFile%, DevZone, DelayAllSystem
    IniRead, AutoSyncCam, %DevZoneFile%, DevZone, AutoSyncCam
}
LoadDevZone()
LoadConfig(){
    IniRead, CarrotSeed, %configfile%, Seeds, CarrotSeed
    IniRead, StrawberrySeed, %configfile%, Seeds, StrawberrySeed
    IniRead, BlueberrySeed, %configfile%, Seeds, BlueberrySeed
    IniRead, OrangeTulip, %configfile%, Seeds, OrangeTulip
    IniRead, TomatoSeed, %configfile%, Seeds, TomatoSeed
    IniRead, CornSeed, %configfile%, Seeds, CornSeed
    IniRead, DaffodilSeed, %configfile%, Seeds, DaffodilSeed
    IniRead, WatermelonSeed, %configfile%, Seeds, WatermelonSeed
    IniRead, PumpkinSeed, %configfile%, Seeds, PumpkinSeed
    IniRead, AppleSeed, %configfile%, Seeds, AppleSeed
    IniRead, BambooSeed, %configfile%, Seeds, BambooSeed
    IniRead, CoconutSeed, %configfile%, Seeds, CoconutSeed
    IniRead, CactusSeed, %configfile%, Seeds, CactusSeed
    IniRead, DragonFruitSeed, %configfile%, Seeds, DragonFruitSeed
    IniRead, MangoSeed, %configfile%, Seeds, MangoSeed
    IniRead, GrapeSeed, %configfile%, Seeds, GrapeSeed
    IniRead, MushroomSeed, %configfile%, Seeds, MushroomSeed
    IniRead, PepperSeed, %configfile%, Seeds, PepperSeed
    IniRead, CacaoSeed, %configfile%, Seeds, CacaoSeed
    IniRead, BeanStalkSeed, %configfile%, Seeds, BeanStalkSeed
    IniRead, EmberLilySeed, %configfile%, Seeds, EmberLilySeed
    IniRead, SugarApple, %configfile%, Seeds, SugarApple
    IniRead, WateringCan, %configfile%, Gear, WateringCan
    IniRead, Trowel, %configfile%, Gear, Trowel
    IniRead, RecallWrench, %configfile%, Gear, RecallWrench
    IniRead, BasicSprinkler, %configfile%, Gear, BasicSprinkler
    IniRead, AdvancedSprinkler, %configfile%, Gear, AdvancedSprinkler
    IniRead, GodlySprinkler, %configfile%, Gear, GodlySprinkler
    IniRead, LighningRod, %configfile%, Gear, LighningRod
    IniRead, MasterSprinkler, %configfile%, Gear, MasterSprinkler
    IniRead, CleaningSpray, %configfile%, Gear, CleaningSpray
    IniRead, FavoriteTool, %configfile%, Gear, FavoriteTool
    IniRead, HarvestTool, %configfile%, Gear, HarvestTool
    IniRead, FriendShipPot, %configfile%, Gear, FriendShipPot
    IniRead, CommonEgg, %configfile%, Egg, CommonEgg
    IniRead, UncommonEgg, %configfile%, Egg, UncommonEgg
    IniRead, RareEgg, %configfile%, Egg, RareEgg
    IniRead, LegendaryEgg, %configfile%, Egg, LegendaryEgg
    IniRead, MythicalEgg, %configfile%, Egg, MythicalEgg
    IniRead, BugEgg, %configfile%, Egg, BugEgg
    IniRead, BuyAllTopCosmetic, %configfile%, CosmeticShop, BuyAllTopCosmetic
    IniRead, BuyAllDownCosmetic, %configfile%, CosmeticShop, BuyAllDownCosmetic
    IniRead, UsingRecallWrench, %configfile%, Settings, UsingRecallWrench
    IniRead, AutoRejoin, %UserConfigFile%, Settings, AutoRejoin, 0f
    IniRead, PrivateServersLink, %UserConfigFile%, ServersLink, PrivateServersLink
    IniRead, discordUserID, %UserConfigFile%, WebhookLink, discordUserID
    IniRead, NoBrowser, %UserConfigFile%, ServersLink, NoBrowser
    IniRead, Usingwebhook, %UserConfigFile%, WebhookLink, Usingwebhook,
    IniRead, webhookURL, %UserConfigFile%, WebhookLink, webhookURL,
    IniRead, debugMode, %UserConfigFile%, Settings, debugMode
    IniRead, PlayNotifySound, %UserConfigFile%, Settings, PlayNotifySound
    IniRead, ClickBuy, %UserConfigFile%, MacroControl, ClickBuy,
    IniRead, CheckerRun, %UserConfigFile%, Settings, CheckerRun
    IniRead, SaveTime, %UserConfigFile%, Settings, SaveTime
    IniRead, AntiMenu, %UserConfigFile%, Settings, AntiMenu
    IniRead, WalktoGear, %controlFile%, MacroControl, WalktoGear,
    IniRead, WalktoEgg, %controlFile%, MacroControl, WalktoEgg,
    IniRead, WalktoCosmeticShop, %controlFile%, MacroControl, WalktoCosmeticShop,
    IniRead, WalktoEggToEgg, %controlFile%, MacroControl, WalktoEggToEgg,
    IniRead, SpeedWheelDown, %controlFile%, MacroControl, SpeedWheelDown
    IniRead, SpeedWheelUp, %controlFile%, MacroControl, SpeedWheelUp
    IniRead, WheelUpTimes, %controlFile%, MacroControl, WheelUpTimes
    IniRead, upG, %configFile%, Patterns, UpGarden, 0
    IniRead, downG, %configFile%, Patterns, DownGarden, 0
    IniRead, upL, %configFile%, Patterns, UpGardenList,
    IniRead, downL, %configFile%, Patterns, DownGardenList,
    GuiControl,, CarrotSeed, % (CarrotSeed = 1 ? 1 : 0)
    GuiControl,, StrawberrySeed, % (StrawberrySeed = 1 ? 1 : 0)
    GuiControl,, BlueberrySeed, % (BlueberrySeed = 1 ? 1 : 0)
    GuiControl,, OrangeTulip, % (OrangeTulip = 1 ? 1 : 0)
    GuiControl,, TomatoSeed, % (TomatoSeed = 1 ? 1 : 0)
    GuiControl,, CornSeed, % (CornSeed = 1 ? 1 : 0)
    GuiControl,, DaffodilSeed, % (DaffodilSeed = 1 ? 1 : 0)
    GuiControl,, WatermelonSeed, % (WatermelonSeed = 1 ? 1 : 0)
    GuiControl,, PumpkinSeed, % (PumpkinSeed = 1 ? 1 : 0)
    GuiControl,, AppleSeed, % (AppleSeed = 1 ? 1 : 0)
    GuiControl,, BambooSeed, % (BambooSeed = 1 ? 1 : 0)
    GuiControl,, CoconutSeed, % (CoconutSeed = 1 ? 1 : 0)
    GuiControl,, CactusSeed, % (CactusSeed = 1 ? 1 : 0)
    GuiControl,, DragonFruitSeed, % (DragonFruitSeed = 1 ? 1 : 0)
    GuiControl,, MangoSeed, % (MangoSeed = 1 ? 1 : 0)
    GuiControl,, GrapeSeed, % (GrapeSeed = 1 ? 1 : 0)
    GuiControl,, MushroomSeed, % (MushroomSeed = 1 ? 1 : 0)
    GuiControl,, PepperSeed, % (PepperSeed = 1 ? 1 : 0)
    GuiControl,, CacaoSeed, % (CacaoSeed = 1 ? 1 : 0)
    GuiControl,, BeanStalkSeed, % (BeanStalkSeed = 1 ? 1 : 0)
    GuiControl,, EmberLilySeed, % (EmberLilySeed = 1 ? 1 : 0)
    GuiControl,, SugarApple, % (SugarApple = 1 ? 1 : 0)
    GuiControl,, WateringCan, % (WateringCan = 1 ? 1 : 0)
    GuiControl,, Trowel, % (Trowel = 1 ? 1 : 0)
    GuiControl,, RecallWrench, % (RecallWrench = 1 ? 1 : 0)
    GuiControl,, BasicSprinkler, % (BasicSprinkler = 1 ? 1 : 0)
    GuiControl,, AdvancedSprinkler, % (AdvancedSprinkler = 1 ? 1 : 0)
    GuiControl,, GodlySprinkler, % (GodlySprinkler = 1 ? 1 : 0)
    GuiControl,, LighningRod, % (LighningRod = 1 ? 1 : 0)
    GuiControl,, MasterSprinkler, % (MasterSprinkler = 1 ? 1 : 0)
    GuiControl,, CleaningSpray, % (CleaningSpray = 1 ? 1 : 0)
    GuiControl,, FavoriteTool, % (FavoriteTool = 1 ? 1 : 0)
    GuiControl,, HarvestTool, % (HarvestTool = 1 ? 1 : 0)
    GuiControl,, CommonEgg, % (CommonEgg = 1 ? 1 : 0)
    GuiControl,, UncommonEgg, % (UncommonEgg = 1 ? 1 : 0)
    GuiControl,, RareEgg, % (RareEgg = 1 ? 1 : 0)
    GuiControl,, LegendaryEgg, % (LegendaryEgg = 1 ? 1 : 0)
    GuiControl,, MythicalEgg, % (MythicalEgg = 1 ? 1 : 0)
    GuiControl,, BugEgg, % (BugEgg = 1 ? 1 : 0)
    GuiControl,, HelloOnett, % (HelloOnett = 1 ? 1 : 0)
    GuiControl,, FlowerSeedPack, % (FlowerSeedPack = 1 ? 1 : 0)
    GuiControl,, LavenderSeed, % (LavenderSeed = 1 ? 1 : 0)
    GuiControl,, NectarShadeSeed, % (NectarShadeSeed = 1 ? 1 : 0)
    GuiControl,, NectarineSeed, % (NectarineSeed = 1 ? 1 : 0)
    GuiControl,, HiveFruitSeed, % (HiveFruitSeed = 1 ? 1 : 0)
    GuiControl,, PollenRadar, % (PollenRadar = 1 ? 1 : 0)
    GuiControl,, NectarStaff, % (NectarStaff = 1 ? 1 : 0)
    GuiControl,, HoneySprinkler, % (HoneySprinkler = 1 ? 1 : 0)
    GuiControl,, BeeEgg, % (BeeEgg = 1 ? 1 : 0)
    GuiControl,, BeeCrate, % (BeeCrate = 1 ? 1 : 0)
    GuiControl,, HoneyComb, % (HoneyComb = 1 ? 1 : 0)
    GuiControl,, BeeChair, % (BeeChair = 1 ? 1 : 0)
    GuiControl,, HoneyTorch, % (HoneyTorch = 1 ? 1 : 0)
    GuiControl,, HoneyWalkway, % (HoneyWalkway = 1 ? 1 : 0)
    GuiControl,, BuyAllTopCosmetic, % (BuyAllTopCosmetic = 1 ? 1 : 0)
    GuiControl,, BuyAllDownCosmetic, % (BuyAllDownCosmetic = 1 ? 1 : 0)
    GuiControl,, UsingRecallWrench, % (UsingRecallWrench = 1 ? 1 : 0)
    GuiControl,, Up246, % (Up246 = 1 ? 1 : 0)
    GuiControl,, Down135, % (Down135 = 1 ? 1 : 0)
    GuiControl,, UpList, %UpList%
    GuiControl,, DownList, %DownList%
}
global options := {"WindowX":100, "WindowY":100, "StatusBarEnabled":0}
clamp(x,mn,mx){
    nX := Min(x,mx)
    nX := Max(nX,mn)
    return nX
}
global BSpeedmodes := "MediumMode||RushMode|SlowMode|Custom"
IniRead, SpeedModes, %UserConfigFile%, Settings, SpeedModes, SpeedModes
IniRead, Crafting, %configFile%, Craft, Crafting, Crafting
IniRead, Bearbee, %configFile%, Craft, Bearbee, Bearbee
CreateMainUI() {
    global
    Gui mainUI: New, +hWndhGui
    Gui Color, 0xbdbdbd
    Gui Font, s11 Norm, Segoe UI
    Gui Add, Button, gstartscript x60 y283 w237 h23 -Tabstop, Start [F5]
    Gui Add, Button, greloadui x307 y283 w125 h23 -Tabstop, Reload [F6]
    Gui Add, Button, gsaveconfig x438 y283 w153 h23 -Tabstop, Main-Save
    Gui Add, Tab3, vMainTabs x8 y8 w670 h270 +0x800000, Seeds|Gears|Eggs|Cosmetic|Settings|Webhook|Credits
    Gui Tab, 1
    Gui Font, s10 w600
    Gui Add, GroupBox, x16 y40 w652 h230 -Theme +0x50000007, Seeds
    Gui Font, s9 norm
    Gui Add, CheckBox, vCarrotSeed x30 y60 w110 h20 +0x2 -Tabstop, Carrot Seed
    Gui Add, CheckBox, vStrawberrySeed x30 y80 w110 h20 +0x2 -Tabstop, Strawberry Seed
    Gui Add, CheckBox, vBlueberrySeed x30 y100 w110 h20 +0x2 -Tabstop, Blueberry Seed
    Gui Add, CheckBox, vOrangeTulip x30 y120 w110 h20 +0x2 -Tabstop, Orange Tulip
    Gui Add, CheckBox, vTomatoSeed x30 y140 w110 h20 +0x2 -Tabstop, Tomato Seed
    Gui Add, CheckBox, vCornSeed x30 y160 w110 h20 +0x2 -Tabstop, Corn Seed
    Gui Add, CheckBox, vDaffodilSeed x30 y180 w110 h20 +0x2 -Tabstop, Daffodil Seed
    Gui Add, CheckBox, vWatermelonSeed x30 y200 w110 h20 +0x2 -Tabstop, Watermelon Seed
    Gui Add, CheckBox, vPumpkinSeed x30 y220 w110 h20 +0x2 -Tabstop, Pumpkin Seed
    Gui Add, CheckBox, vAppleSeed x30 y240 w110 h20 +0x2 -Tabstop, Apple Seed
    Gui Add, CheckBox, vBambooSeed x166 y60 w110 h20 +0x2 -Tabstop, BambooSeed
    Gui Add, CheckBox, vCoconutSeed x166 y80 w110 h20 +0x2 -Tabstop, Coconut Seed
    Gui Add, CheckBox, vCactusSeed x166 y100 w110 h20 +0x2 -Tabstop, Cactus Seed
    Gui Add, CheckBox, vDragonFruitSeed x166 y120 w110 h20 +0x2 -Tabstop, DragonFruit Seed
    Gui Add, CheckBox, vMangoSeed x166 y140 w110 h20 +0x2 -Tabstop, Mango Seed
    Gui Add, CheckBox, vGrapeSeed x166 y160 w110 h20 +0x2 -Tabstop, GrapeSeed
    Gui Add, CheckBox, vMushroomSeed x166 y180 w110 h20 +0x2 -Tabstop, Mushroom Seed
    Gui Add, CheckBox, vPepperSeed x166 y200 w110 h20 +0x2 -Tabstop, Pepper Seed
    Gui Add, CheckBox, vCacaoSeed x166 y220 w110 h20 +0x2 -Tabstop, Cacao Seed
    Gui Add, CheckBox, vBeanStalkSeed x166 y240 w110 h20 +0x2 -Tabstop, BeanStalk Seed
    Gui Add, CheckBox, vEmberLilySeed x320 y60 w110 h20 +0x2 -Tabstop, Ember Lily Seed
    Gui Add, CheckBox, vSugarApple x320 y80 w110 h20 +0x2 -Tabstop, Sugar Apple
    Gui Add, Picture, x301 y125 w301 h138 , % A_ScriptDir . "\Core\images\keyboard-cat.gif"
    Gui Tab, 2
    Gui Font, s10 w600
    Gui Add, GroupBox, x16 y40 w231 h230 -Theme +0x50000007, Gears
    Gui Font, s9 norm
    Gui Add, CheckBox, vWateringCan x30 y60 w110 h20 +0x2 -Tabstop, Watering Can
    Gui Add, CheckBox, vTrowel x30 y80 w110 h20 +0x2 -Tabstop, Trowel
    Gui Add, CheckBox, vRecallWrench x30 y100 w110 h20 +0x2 -Tabstop, Recall Wrench
    Gui Add, CheckBox, vLighningRod x30 y120 w110 h20 +0x2 -Tabstop, Lighning Rod
    Gui Add, CheckBox, vFavoriteTool x30 y140 w110 h20 +0x2 -Tabstop, Favorite Tool
    Gui Add, CheckBox, vHarvestTool x30 y160 w110 h20 +0x2 -Tabstop, Harvest Tool
    Gui Add, CheckBox, vFriendShipPot x30 y180 w110 h20 +0x2 -Tabstop, Friendship Pot
    Gui Add, CheckBox, vCleaningSpray x30 y200 w110 h20 +0x2 -Tabstop, Cleaning Spray
    Gui Font, s10 w600
    Gui Add, GroupBox, x251 y40 w420 h230 -Theme +0x50000007, Sprinkler
    Gui Font, s9 norm
    Gui Add, CheckBox, vBasicSprinkler x262 y60 w120 h20 +0x2 -Tabstop, Basic Sprinkler
    Gui Add, CheckBox, vAdvancedSprinkler x262 y80 w120 h20 +0x2 -Tabstop, Advanced Sprinkler
    Gui Add, CheckBox, vGodlySprinkler x262 y100 w120 h20 +0x2 -Tabstop, Godly Sprinkler
    Gui Add, CheckBox, vMasterSprinkler x262 y120 w120 h20 +0x2 -Tabstop, Master Sprinkler
    Gui, Tab, 3
    Gui Font, s10 w600
    Gui Add, GroupBox, x16 y40 w652 h230 -Theme +0x50000007, Eggs Shop
    Gui Font, s9 norm
    Gui Add, CheckBox, vCommonEgg x30 y60 w110 h20 +0x2 -Tabstop, Common Egg
    Gui Add, CheckBox, vUncommonEgg x30 y80 w110 h20 +0x2 -Tabstop, Uncommon Egg
    Gui Add, CheckBox, vRareEgg x30 y100 w110 h20 +0x2 -Tabstop, Rare Egg
    Gui Add, CheckBox, vLegendaryEgg x30 y120 w110 h20 +0x2 -Tabstop, Legendary Egg
    Gui Add, CheckBox, vMythicalEgg x30 y140 w110 h20 +0x2 -Tabstop, Mythical Egg
    Gui Add, CheckBox, vBugEgg x30 y160 w110 h20 +0x2 -Tabstop, Bug Egg
    Gui, Tab, 4
    Gui Font, s10 w600
    Gui Add, GroupBox, x16 y40 w652 h230 -Theme +0x50000007, Cosmetic Shop
    Gui Font, s9 norm
    Gui Add, CheckBox, vBuyAllTopCosmetic x30 y60 w150 h20 +0x2 -Tabstop, Buy All Top Cosmetic
    Gui Add, CheckBox, vBuyAllDownCosmetic x30 y80 w170 h20 +0x2 -Tabstop, Buy All Down Cosmetic
    Gui, Tab, 5
    Gui Font, s10 w600
    Gui Add, GroupBox, x16 y40 w231 h230 -Theme +0x50000007, Settings
    Gui Font, s9 norm
    Gui Add, CheckBox, vUsingRecallWrench x30 y60 w130 h20 +0x2 -Tabstop, Using RecallWrench
    Gui Add, CheckBox, vdebugMode x30 y80 w120 h20 +0x2 -Tabstop, Macro DebugLog
    Gui Add, CheckBox, vPlayNotifySound x30 y100 w120 h20 +0x2 -Tabstop, Play Notify Sound
    Gui Add, CheckBox, vCheckerRun x30 y120 h20 +0x2 -Tabstop, Checker-Run (Set items)
    Gui Add, CheckBox, vSaveTime x30 y140 w173 h20 +0x2 -Tabstop, Save-Times (Back after 30/m)
    Gui Add, CheckBox, vAntiMenu x30 y160 w173 h20 +0x2 -Tabstop, Anti-Menu (And-SyncCam)
    Gui Add, CheckBox, vDevZone x30 y200 h20 +0x2 -Tabstop, DevZone (Welcome to the New World)
    Gui, Add, DropDownList, x30 y240 w150 vSpeedModes, % BSpeedmodes
    GuiControl,, SpeedMode, %savedMode%
    Gui Font, s10 w600
    Gui Add, GroupBox, x251 y40 w420 h70 -Theme +0x50000007, Private Servers
    Gui Font, s9 norm
    Gui, Add, Edit, x262 y63 h20 w310 vPrivateServersLink -Tabstop,
    If (PrivateServersLink == "ERROR")
        PrivateServersLink := ""
    Gui, Add, Button, x582 y60 w75 h25 -Tabstop, Join
    Gui Add, CheckBox, vNoBrowser x262 y85 w130 h20 +0x2 -Tabstop, No Open Browser
    Gui Add, CheckBox, vAutoRejoin x402 y85 w130 h20 +0x2 -Tabstop, AutoRejoin
    Gui Add, Picture, x301 y125 w301 h138 , % A_ScriptDir . "\Core\images\keyboard-cat.gif"
    Gui Tab, 6
    Gui Font, s10 w600
    Gui Add, GroupBox, x16 y40 w652 h230 -Theme +0x50000007, Webhook
    Gui Font, s9 norm
    Gui Add, CheckBox, vUsingwebhook x30 y60 w173 h20 +0x2 -Tabstop, Using Webhook(On = Delay)
    Gui Font, s10 w600
    Gui Add, GroupBox, x23 y80 w638 h50 -Theme +0x50000007, Main
    Gui Font, s9 norm
    Gui, Add, Edit, x55 y100 w570 h18 vwebhookURL -Tabstop,
    If (webhookURL == "ERROR")
        webhookURL := ""
    Gui Font, s10 w600
    Gui Add, GroupBox, x23 y139 w638 h50 -Theme +0x50000007, UserID
    Gui Font, s9 norm
    Gui, Add, Edit, x55 y162 w460 h18 vdiscordUserID -Tabstop,
    Gui Add, Button, x535 y159 w107 h23 -Tabstop, Check Ping
    If (discordUserID == "ERROR")
        discordUserID := ""
    Gui Tab, 7
    Gui Font, s10 w600
    Gui Add, GroupBox, x16 y40 w251 h133 vCreditsGroup -Theme +0x50000007, The Creator
    Gui Add, Picture, w75 h75 x23 y62, % KM19Icon
    Gui Font, s12 w600
    Gui Add, Text, x110 y57 w130 h22,K-M19 (ButAa)
    Gui Font, s8 norm
    Gui Add, Text, x115 y83 w124 h60,"This is considered a short term project for me to expand my AHK capabilities.."
    Gui Font, s8 norm
    Gui Add, Text, x28 y140 w200 h32 BackgroundTrans,% "I will continue to update until I lose interest."
    Gui Add, Button, x28 y230 w206 h32 gMoreCreditsClick,% "More Credits"
    Gui Add, Button, x28 y195 w206 h32 gMorebugs,% "Report Bugs?"
    If (ButtonUpdateCheck == "1")
        Gui Add, Button, x290 y222 w206 h32 gClickToUpdate,% "Update Macro"
    Gui Font, s10 w600
    Gui Add, GroupBox, x292 y40 w275 h133 vCreditsGroup2 -Theme +0x50000007, The Support
    Gui Add, Picture, x302 y62 w75 h75, %  TyepIcon
    Gui Font, s12 w600
    Gui Add, Text, x394 y57 w130 h22, Tyep
    Gui Font, s8 norm,
    Gui Add, Text, x390 y90 w170 h68,% "Thanks, for Coding and debug support."
    Gui Font, s8 norm
    Gui Add, Text, x315 y140 w200 h32 BackgroundTrans,% "I LOVE COLA."
    Gui Font, s10 w600
    Gui Add, GroupBox, x252 y175 w330 h90 vCreditsGroup3 -Theme +0x50000007, Other
    Gui Font, s11 norm
    Gui Add, Link, x268 y203 h20, <a href="https://github.com/K-M19/ButAa-Grow-A-Garden-Macro">GitHub</a>
    Gui Add, Link, x320 y203 h20, <a href="https://discord.com/invite/n8M25v2fGq">Discord</a>
    Gui Add, Link, x380 y203 h20, <a href="https://butaa91z.netlify.app">Website</a>
    Gui Add, Link, x442 y203 h20, <a href="https://www.roblox.com/games/4730813039/Donate-to-ME#!/store">Donate</a>
    Gui Show, w690 h314 , % "ButAa-Grow-A-Garden-Macro (V3.8.3)"
    Gui statusBar:New, +AlwaysOnTop -Caption
    Gui Font, s10 norm
    Gui mainUI:Default
}
CreateMainUI()
LoadConfig()
If (Usingwebhook == "1")
    SendWebhook("Webhook Connected")
LogDebug("Hello!")
LogDebug("Macro By: K-M19")
LogDebug("K-M19/ButAa-Grow-A-Garden-Macro")
If (SpeedModes == "RushMode")
    DelayAllSystem := "320"
If (SpeedModes == "MediumMode")
    DelayAllSystem := "410"
If (SpeedModes == "SlowMode")
    DelayAllSystem := "530"
If (SpeedModes == "Custom"){
}
GuiControl,, CarrotSeed, % (CarrotSeed = 1 ? 1 : 0)
GuiControl,, StrawberrySeed, % (StrawberrySeed = 1 ? 1 : 0)
GuiControl,, BlueberrySeed, % (BlueberrySeed = 1 ? 1 : 0)
GuiControl,, OrangeTulip, % (OrangeTulip = 1 ? 1 : 0)
GuiControl,, TomatoSeed, % (TomatoSeed = 1 ? 1 : 0)
GuiControl,, CornSeed, % (CornSeed = 1 ? 1 : 0)
GuiControl,, DaffodilSeed, % (DaffodilSeed = 1 ? 1 : 0)
GuiControl,, WatermelonSeed, % (WatermelonSeed = 1 ? 1 : 0)
GuiControl,, PumpkinSeed, % (PumpkinSeed = 1 ? 1 : 0)
GuiControl,, AppleSeed, % (AppleSeed = 1 ? 1 : 0)
GuiControl,, BambooSeed, % (BambooSeed = 1 ? 1 : 0)
GuiControl,, CoconutSeed, % (CoconutSeed = 1 ? 1 : 0)
GuiControl,, CactusSeed, % (CactusSeed = 1 ? 1 : 0)
GuiControl,, DragonFruitSeed, % (DragonFruitSeed = 1 ? 1 : 0)
GuiControl,, MangoSeed, % (MangoSeed = 1 ? 1 : 0)
GuiControl,, GrapeSeed, % (GrapeSeed = 1 ? 1 : 0)
GuiControl,, MushroomSeed, % (MushroomSeed = 1 ? 1 : 0)
GuiControl,, PepperSeed, % (PepperSeed = 1 ? 1 : 0)
GuiControl,, CacaoSeed, % (CacaoSeed = 1 ? 1 : 0)
GuiControl,, BeanStalkSeed, % (BeanStalkSeed = 1 ? 1 : 0)
GuiControl,, EmberLilySeed, % (EmberLilySeed = 1 ? 1 : 0)
GuiControl,, SugarApple, % (SugarApple = 1 ? 1 : 0)
GuiControl,, WateringCan, % (WateringCan = 1 ? 1 : 0)
GuiControl,, Trowel, % (Trowel = 1 ? 1 : 0)
GuiControl,, RecallWrench, % (RecallWrench = 1 ? 1 : 0)
GuiControl,, BasicSprinkler, % (BasicSprinkler = 1 ? 1 : 0)
GuiControl,, AdvancedSprinkler, % (AdvancedSprinkler = 1 ? 1 : 0)
GuiControl,, GodlySprinkler, % (GodlySprinkler = 1 ? 1 : 0)
GuiControl,, LighningRod, % (LighningRod = 1 ? 1 : 0)
GuiControl,, MasterSprinkler, % (MasterSprinkler = 1 ? 1 : 0)
GuiControl,, FavoriteTool, % (FavoriteTool = 1 ? 1 : 0)
GuiControl,, HarvestTool, % (HarvestTool = 1 ? 1 : 0)
GuiControl,, FriendShipPot, % (FriendShipPot = 1 ? 1 : 0)
GuiControl,, CleaningSpray, % (CleaningSpray = 1 ? 1 : 0)
GuiControl,, CommonEgg, % (CommonEgg = 1 ? 1 : 0)
GuiControl,, UncommonEgg, % (UncommonEgg = 1 ? 1 : 0)
GuiControl,, RareEgg, % (RareEgg = 1 ? 1 : 0)
GuiControl,, LegendaryEgg, % (LegendaryEgg = 1 ? 1 : 0)
GuiControl,, MythicalEgg, % (MythicalEgg = 1 ? 1 : 0)
GuiControl,, BugEgg, % (BugEgg = 1 ? 1 : 0)
GuiControl,, BuyAllTopCosmetic, % (BuyAllTopCosmetic = 1 ? 1 : 0)
GuiControl,, BuyAllDownCosmetic, % (BuyAllDownCosmetic = 1 ? 1 : 0)
GuiControl,, UsingRecallWrench, % (UsingRecallWrench = 1 ? 1 : 0)
GuiControl,, debugMode, % (debugMode = 1 ? 1 : 0)
GuiControl,, PlayNotifySound, % (PlayNotifySound = 1 ? 1 : 0)
GuiControl,, CheckerRun, % (CheckerRun = 1 ? 1 : 0)
GuiControl,, Usingwebhook, % (Usingwebhook = 1 ? 1 : 0)
GuiControl,, SaveTime, % (SaveTime = 1 ? 1 : 0)
GuiControl,, AntiMenu, % (AntiMenu = 1 ? 1 : 0)
GuiControl, ChooseString, SpeedModes, %SpeedModes%
GuiControl, ChooseString, Crafting, %Crafting%
GuiControl, ChooseString, Bearbee, %Bearbee%
SaveConfig(){
    Gui, Submit, NoHide
    IniWrite, %CarrotSeed%, %configfile%, Seeds, CarrotSeed
    IniWrite, %StrawberrySeed%, %configfile%, Seeds, StrawberrySeed
    IniWrite, %BlueberrySeed%, %configfile%, Seeds, BlueberrySeed
    IniWrite, %OrangeTulip%, %configfile%, Seeds, OrangeTulip
    IniWrite, %TomatoSeed%, %configfile%, Seeds, TomatoSeed
    IniWrite, %CornSeed%, %configfile%, Seeds, CornSeed
    IniWrite, %DaffodilSeed%, %configfile%, Seeds, DaffodilSeed
    IniWrite, %WatermelonSeed%, %configfile%, Seeds, WatermelonSeed
    IniWrite, %PumpkinSeed%, %configfile%, Seeds, PumpkinSeed
    IniWrite, %AppleSeed%, %configfile%, Seeds, AppleSeed
    IniWrite, %BambooSeed%, %configfile%, Seeds, BambooSeed
    IniWrite, %CoconutSeed%, %configfile%, Seeds, CoconutSeed
    IniWrite, %CactusSeed%, %configfile%, Seeds, CactusSeed
    IniWrite, %DragonFruitSeed%, %configfile%, Seeds, DragonFruitSeed
    IniWrite, %MangoSeed%, %configfile%, Seeds, MangoSeed
    IniWrite, %GrapeSeed%, %configfile%, Seeds, GrapeSeed
    IniWrite, %MushroomSeed%, %configfile%, Seeds, MushroomSeed
    IniWrite, %PepperSeed%, %configfile%, Seeds, PepperSeed
    IniWrite, %CacaoSeed%, %configfile%, Seeds, CacaoSeed
    IniWrite, %BeanStalkSeed%, %configfile%, Seeds, BeanStalkSeed
    IniWrite, %EmberLilySeed%, %configfile%, Seeds, EmberLilySeed
    IniWrite, %SugarApple%, %configfile%, Seeds, SugarApple
    IniWrite, %WateringCan%, %configfile%, Gear, WateringCan
    IniWrite, %Trowel%, %configfile%, Gear, Trowel
    IniWrite, %RecallWrench%, %configfile%, Gear, RecallWrench
    IniWrite, %BasicSprinkler%, %configfile%, Gear, BasicSprinkler
    IniWrite, %AdvancedSprinkler%, %configfile%, Gear, AdvancedSprinkler
    IniWrite, %GodlySprinkler%, %configfile%, Gear, GodlySprinkler
    IniWrite, %LighningRod%, %configfile%, Gear, LighningRod
    IniWrite, %MasterSprinkler%, %configfile%, Gear, MasterSprinkler
    IniWrite, %FavoriteTool%, %configfile%, Gear, FavoriteTool
    IniWrite, %HarvestTool%, %configfile%, Gear, HarvestTool
    IniWrite, %FriendShipPot%, %configfile%, Gear, FriendShipPot
    IniWrite, %CleaningSpray%, %configfile%, Gear, CleaningSpray
    IniWrite, %CommonEgg%, %configfile%, Egg, CommonEgg
    IniWrite, %UncommonEgg%, %configfile%, Egg, UncommonEgg
    IniWrite, %RareEgg%, %configfile%, Egg, RareEgg
    IniWrite, %LegendaryEgg%, %configfile%, Egg, LegendaryEgg
    IniWrite, %MythicalEgg%, %configfile%, Egg, MythicalEgg
    IniWrite, %BugEgg%, %configfile%, Egg, BugEgg
    IniWrite, %BuyAllTopCosmetic%, %configfile%, CosmeticShop, BuyAllTopCosmetic
    IniWrite, %BuyAllDownCosmetic%, %configfile%, CosmeticShop, BuyAllDownCosmetic
    IniWrite, %UsingRecallWrench%, %configfile%, Settings, UsingRecallWrench
    IniWrite, %DevZone%, %DevZoneFile%, DevZone, DevZone
    IniWrite, %DelayAllSystem%, %DevZoneFile%, DevZone, DelayAllSystem
    IniWrite, %AutoSyncCam%, %DevZoneFile%, DevZone, AutoSyncCam
    IniWrite, %NoBrowser%, %UserConfigFile%, ServersLink, NoBrowser
    IniWrite, %discordUserID%, %UserConfigFile%, WebhookLink, discordUserID
    IniWrite, %PrivateServersLink%, %UserConfigFile%, ServersLink, PrivateServersLink
    IniWrite, %Usingwebhook%, %UserConfigFile%, WebhookLink, Usingwebhook
    IniWrite, %webhookURL%, %UserConfigFile%, WebhookLink, webhookURL
    IniWrite, %ClickBuy%, %UserConfigFile%, MacroControl, ClickBuy
    IniWrite, %debugMode%, %UserConfigFile%, Settings, debugMode
    IniWrite, %PlayNotifySound%, %UserConfigFile%, Settings, PlayNotifySound
    IniWrite, %CheckerRun%, %UserConfigFile%, Settings, CheckerRun
    IniWrite, %SaveTime%, %UserConfigFile%, Settings, SaveTime
    IniWrite, %AntiMenu%, %UserConfigFile%, Settings, AntiMenu
    IniWrite, %CollectHoney%, %UserConfigFile%, Settings, CollectHoney
    IniWrite, %WaitMenuSeedsShop%, %controlFile%, MacroControl, WaitMenuSeedsShop
    IniWrite, %SpeedWheelDown%, %controlFile%, MacroControl, SpeedWheelDown
    IniWrite, %SpeedWheelUp%, %controlFile%, MacroControl, SpeedWheelUp
    IniWrite, %WheelUpTimes%, %controlFile%, MacroControl, WheelUpTimes
    IniWrite, %WalktoGear%, %controlFile%, MacroControl, WalktoGear
    IniWrite, %WalktoEgg%, %controlFile%, MacroControl, WalktoEgg
    IniWrite, %WalktoCosmeticShop%, %controlFile%, MacroControl, WalktoCosmeticShop
    IniWrite, %WalktoEggToEgg%, %controlFile%, MacroControl, WalktoEggToEgg
}
nonhere:
return
ClickToUpdate:
    Run % "https://github.com/K-M19/ButAa-Grow-A-Garden-Macro"
return
MoreCreditsClick:
    creditText =
(

Thank you to everyone who currently uses the macro! You guys are amazing!

Support
@Tyep(k.btyep)

Thanks
( astr1x._. | meisboredd | deltacenzo. | somerandomidot | pok_noob1123_96236 | duramo. | Todoto | MoeeewwZyy)
for the bug reports and suggestions!

Made on: MacroMaker-Engine 1.1 - V587.c6 (K-M19)

Safeguarded by [: 8-BIT FORTRESS] Tech 9
)
    MsgBox, 0, More Credits, % creditText
return
mainUIGuiClose:
ExitApp
AboutMe:
    Run % "https://github.com/K-M19"
return
SaveSpeedMode:
    Gui, Submit
    IniWrite, %SpeedMode%, %UserConfigFile%, Settings, SpeedMode
return
Morebugs:
    Run % "https://furbox-studio.netlify.app/itjustworks.png"
return
reloadui:
    SaveConfig()
    Sleep, 300
    ReloadMacroMain()
Return
startscript:
    SaveConfig()
    Sleep, 300
    RunMacroMain()
Return
saveconfig:
    SaveConfig()
Return
SetSaved:
return
global SyncCamBusy := false
Main_SyncCam() {
    global SyncFPS, DelayAllSystem, SyncCamBusy
    if (SyncCamBusy)
        return
    SyncCamBusy := true
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    MouseMove, 770, 20
    Sleep, 100
    MouseMove, 778, 9
    Send, {Escape}
    Sleep, 1000
    Send, {Tab}
    Sleep, 400
    Send, {Down}
    Sleep, 100
    Send, {Right}
    Sleep, 30
    Send, {Right}
    Sleep, 30
    Sleep, 100
    if (SyncFPS == "0") {
        Sleep, 100
        Send, {Down}
        Sleep, 100
        Send, {Down}
        Sleep, 100
        Send, {Enter}
        Sleep, 100
        Loop, 6 {
            Send, {Up}
            Sleep, 100
        }
        Send, {Enter}
        Sleep, 100
        SyncFPS := "1"
    }
    Send, {Escape}
    Sleep, 100
    Loop, 40 {
        Send, {WheelUp}
        Sleep, 20
    }
    Sleep, %DelayAllSystem%
    Loop, 6 {
        Send, {WheelDown}
        Sleep, 20
    }
    Sleep, 100
    Send, {rbutton up}
    Sleep, 10
    MouseMove, 770, 20
    Sleep, 10
    Send, {rbutton down}
    Sleep, 100
    MouseMove, 766, 517
    Sleep, 100
    Send, {rbutton up}
    Sleep, 10
    MouseMove, 770, 20
    Sleep, 100
    Loop, 10 {
        Click, 244, 95
        Sleep, 30
        Click, 544, 91
    }
    Sleep, 100
    Send, {Escape}
    Sleep, 1000
    Send, {Tab}
    Sleep, 400
    Send, {Down}
    Sleep, 100
    Send, {Right}
    Sleep, 30
    Send, {Right}
    Sleep, 30
    Sleep, 100
    Send, {Escape}
    Sleep, 500
    Click, 397, 89
    MouseMove, 770, 20
    SyncCamBusy := false
}
BuySeed(WheelTimes, ClickY, ExitY, Name, Ping := true) {
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    global SeedShop, SpeedWheelDown, DelayAllSystem, ClickBuy, WheelUpTimes, SpeedWheelUp, Usingwebhook, discordUserID
    if (SeedShop = "0") {
        Openshopseeds()
    }
    Loop, %WheelTimes% {
        Send, {WheelDown}
        Sleep, %SpeedWheelDown%
    }
    Sleep, %DelayAllSystem%
    Click, 350, %ClickY%
    MouseMove, 129, 325
    Sleep, %DelayAllSystem%
    PixelSearch, Px1, Py1, 196, 191, 595, 510, 0x26EE26 , 10, Fast RGB
    if (!ErrorLevel) {
        Loop, %ClickBuy% {
            Click, %Px1%, %Py1%
        }
        Click, 350, %ExitY%
        Sleep, %DelayAllSystem%
        Loop, %WheelUpTimes% {
            Send, {WheelUp}
            Sleep, %SpeedWheelUp%
        }
        SeedShop := "1"
        if (Usingwebhook = "1") {
            msg := "Bought " . Name
            if (Ping && discordUserID != "")
                msg .= " <@" . discordUserID . ">"
            SendWebhook(msg)
        }
        LogDebug("Bought " . Name)
        Loop, 30 {
            Send, {WheelUp}
            Sleep, 20
        }
        Sleep, 100
    } else {
        Click, 350, %ExitY%
        Sleep, %DelayAllSystem%
        SeedShop := "1"
        LogDebug(Name . " already bought or not available")
        Loop, 30 {
            Send, {WheelUp}
            Sleep, 20
        }
        Sleep, 100
    }
}
CarrotSeed() {
    BuySeed(0, 270, 269, "Carrot Seed",0)
}
StrawberrySeed() {
    BuySeed(0, 407, 266, "Strawberry Seed",0)
}
BlueberrySeed() {
    BuySeed(2, 265, 281, "Blueberry Seed",0)
}
OrangeTulip() {
    BuySeed(2, 402, 291, "Orange Tulip Seed",0)
}
TomatoSeed() {
    BuySeed(3, 396, 294, "Tomato Seed",0)
}
CornSeed() {
    BuySeed(4, 392, 295, "Corn Seed",0)
}
DaffodilSeed() {
    BuySeed(5, 389, 304, "Daffodil Seed",0)
}
WatermelonSeed() {
    BuySeed(6, 382, 312, "Watermelon Seed",0)
}
PumpkinSeed() {
    BuySeed(7, 375, 315, "Pumpkin Seed",0)
}
AppleSeed() {
    BuySeed(8, 371, 321, "Apple Seed",0)
}
BambooSeed() {
    BuySeed(9, 365, 327, "Bamboo Seed",0)
}
CoconutSeed() {
    BuySeed(10, 363, 331, "Coconut Seed",0)
}
CactusSeed() {
    BuySeed(11, 359, 334, "Cactus Seed",0)
}
DragonFruitSeed() {
    BuySeed(12, 355, 342, "Dragon Fruit Seed",0)
}
MangoSeed() {
    BuySeed(13, 348, 345, "Mango Seed",0)
}
GrapeSeed() {
    BuySeed(14, 344,  354, "Grape Seed",0)
}
MushroomSeed() {
    BuySeed(15, 338,  355, "Mushroom Seed")
}
PepperSeed() {
    BuySeed(16, 332,  360, "Pepper Seed")
}
CacaoSeed() {
    BuySeed(17, 331, 367, "Cacao Seed")
}
BeanStalkSeed() {
    BuySeed(18, 323, 372, "Bean Stalk Seed")
}
EmberLilySeed() {
    BuySeed(18, 460, 377, "Ember Lily Seed")
}
SugarApple() {
    BuySeed(19, 460, 377, "Sugar Apple")
}
Openshopseeds() {
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    global WaitMenuSeedsShop, WheelUpTimes, SpeedWheelUp
    static IsRunning := false
    if (IsRunning)
        return
    IsRunning := true
    Click, 242, 90
    LogDebug("Click Seeds tab")
    Sleep, 200
    Send, {e}
    Sleep, %WaitMenuSeedsShop%
    MouseMove, 391, 337
    Loop {
        PixelSearch, px, py, 377, 195, 573, 513, 0x48200E, 0, Fast RGB
        if (!ErrorLevel) {
            Loop, 30 {
                Send, {WheelUp}
                Sleep, 20
            }
            Sleep, 1000
            break
        } else {
            Main_SyncCam()
            Sleep, 200
            Click, 242, 90
            LogDebug("Retry Click Seeds tab")
            Sleep, 200
            Send, {e}
            Sleep, %WaitMenuSeedsShop%
        }
    }
    IsRunning := false
}
OffMenuShop() {
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    Click, 585, 163
    LogDebug("Exit menu")
    Click, 398, 92
    LogDebug("Back Garden")
    MouseMove, 770, 20
    SeedShop := "0"
}
GoGearShop(){
    If (UsingRecallWrench == "1"){
        LogDebug("Using Recall Wrench to Gear Shop")
        TpToGearShop()
    }
    else
    {
        LogDebug("Walk to Gear Shop")
        Runtogearshop()
    }
}
TpToGearShop() {
    global DelayAllSystem
    static IsRunning := false
    if (IsRunning)
        return
    IsRunning := true
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    MouseMove, 770, 20
    Sleep, 1000
    Send, {1}
    Sleep, 500
    Click
    Sleep, 2000
    Send, {e}
    Sleep, 3500
    Click, 622, 283
    Sleep, 3500
    MouseMove, 391, 337
    Sleep, %DelayAllSystem%
    retryCount := 0
    maxRetries := 3
    Loop {
        PixelSearch, px, py, 203, 209, 582, 496, 0x48200E, 0, Fast RGB
        if (!ErrorLevel) {
            Sleep, %DelayAllSystem%
            Loop, 40 {
                Send, {WheelUp}
                Sleep, 20
            }
            Sleep, 1000
            Break
        } else {
            retryCount++
            if (retryCount > maxRetries) {
                LogDebug("TpToGearShop() failed after retries.")
                Break
            }
            LogDebug("Retrying TpToGearShop()...")
            Main_SyncCam()
            Sleep, 500
            MouseMove, 770, 20
            Sleep, 1000
            Send, {1}
            Sleep, 500
            Click
            Sleep, 2000
            Send, {e}
            Sleep, 3500
            Click, 622, 283
            Sleep, 3500
            MouseMove, 391, 337
            Sleep, %DelayAllSystem%
        }
    }
    IsRunning := false
}
Runtogearshop() {
    global DelayAllSystem, WalktoGear, WheelUpTimes, SpeedWheelUp
    static IsRunning := false
    if (IsRunning)
        return
    IsRunning := true
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    Click, 245, 93
    Sleep, %DelayAllSystem%
    MouseMove, 770, 20
    LogDebug("Run To Gear Shop")
    Send, {d down}
    Sleep, %WalktoGear%
    Send, {d up}
    Sleep, %DelayAllSystem%
    Send, {s down}
    Sleep, 300
    Send, {s up}
    Sleep, %DelayAllSystem%
    LogDebug("E Key")
    Send, {e}
    Sleep, 3000
    Click, 590, 283
    Sleep, 3000
    MouseMove, 391, 337
    retryCount := 0
    maxRetries := 3
    Loop {
        PixelSearch, px, py, 377, 195, 573, 513, 0x48200E, 0, Fast RGB
        if (!ErrorLevel) {
            Loop, %WheelUpTimes% {
                Send, {WheelUp}
                Sleep, %SpeedWheelUp%
            }
            Sleep, 1000
            break
        } else {
            retryCount++
            if (retryCount > maxRetries) {
                LogDebug("Runtogearshop failed after max retries")
                break
            }
            LogDebug("Retrying gear shop...")
            Main_SyncCam()
            Sleep, 1000
            Click, 245, 93
            Sleep, %DelayAllSystem%
            MouseMove, 770, 20
            Send, {e}
            Sleep, 3000
            Click, 590, 283
            Sleep, 3000
            MouseMove, 391, 337
        }
    }
    IsRunning := false
}
BuyGearShop(WheelTimes, ClickY, ExitY, Name, Ping := true) {
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    global GearShop, SpeedWheelDown, DelayAllSystem, ClickBuy, WheelUpTimes, SpeedWheelUp, Usingwebhook, discordUserID
    if (GearShop = "0") {
        GoGearShop()
    }
    Loop, %WheelTimes% {
        Send, {WheelDown}
        Sleep, %SpeedWheelDown%
    }
    Sleep, %DelayAllSystem%
    Click, 350, %ClickY%
    MouseMove, 129, 325
    Sleep, %DelayAllSystem%
    PixelSearch, Px1, Py1, 197, 196, 591, 512, 0x26EE26 , 10, Fast RGB
    if (!ErrorLevel) {
        Loop, %ClickBuy% {
            Click, %Px1%, %Py1%
        }
        Click, 350, %ExitY%
        Sleep, %DelayAllSystem%
        Loop, %WheelUpTimes% {
            Send, {WheelUp}
            Sleep, %SpeedWheelUp%
        }
        GearShop := "1"
        if (Usingwebhook = "1") {
            msg := "Bought " . Name
            if (Ping && discordUserID != "")
                msg .= " <@" . discordUserID . ">"
            SendWebhook(msg)
        }
        LogDebug("Bought " . Name)
    } else {
        Click, 350, %ExitY%
        Sleep, %DelayAllSystem%
        Loop, %WheelUpTimes% {
            Send, {WheelUp}
            Sleep, %SpeedWheelUp%
        }
        GearShop := "1"
        LogDebug(Name . " already bought or not available")
    }
    Loop, 30 {
        Send, {WheelUp}
        Sleep, 20
    }
    Sleep, 100
}
WateringCan(){
    BuyGearShop(0,280,275,"Watering Can",0)
}
Trowel(){
    BuyGearShop(0, 415,  282, "Trowel",0)
}
RecallWrench() {
    BuyGearShop(1, 407, 289, "Recall Wrench",0)
}
BasicSprinkler() {
    BuyGearShop(2, 403, 299 ,"Basic Sprinkler",0)
}
AdvancedSprinkler() {
    BuyGearShop(3,  400, 299 ,"Advanced Sprinkler",0)
}
GodlySprinkler() {
    BuyGearShop(4, 390,305, "Godly Sprinkler")
}
LighningRod() {
    BuyGearShop(5, 388, 314, "Lightning Rod")
}
MasterSprinkler() {
    BuyGearShop(6, 384, 321, "Master Sprinkler")
}
CleaningSpray() {
    BuyGearShop(7, 378, 329, "Cleaning Spray",0)
}
FavoriteTool() {
    BuyGearShop(8, 373, 332, "Favorite Tool",0)
}
HarvestTool() {
    BuyGearShop(9, 365, 337, "Harvest Tool",0)
}
FriendShipPot() {
    BuyGearShop(10,446, 377, "FriendShip Pot",0)
}
ExitmenuEgg(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    PixelSearch, px, py, 520, 207, 560, 249, 0xDC1D1A , 0, Fast RGB
    if (!ErrorLevel) {
        Click, 542, 232
        LogDebug("Exit menu")
        MouseMove, 770, 20
    }
    Else
    {
        LogDebug("Exit menu not found")
    }
}
MainBuyEgg(){
    If (BugEgg = "1"){
        if (CommonEgg = "1")
            CommonEgg()
        if (UncommonEgg = "1")
            UncommonEgg()
        if (RareEgg = "1")
            RareEgg()
        if (LegendaryEgg = "1")
            LegendaryEgg()
        if (MythicalEgg = "1")
            MythicalEgg()
        If (BugEgg = "1")
            BugEgg()
    }
    ExitmenuEgg()
    MouseMove, 770, 20
}
BuyEgg(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    If (UsingRecallWrench == "0"){
        Sleep, %DelayAllSystem%
        MouseMove, 770, 20
        Send, {1}
        Sleep, %DelayAllSystem%
        Click
        Sleep, 1000
    }
    Send, {w down}
    Sleep, %WalktoEgg%
    Send, {w up}
    Sleep, %DelayAllSystem%
    Send, {e}
    Sleep, 1000
    MainBuyEgg()
    Sleep, 1000
    Sleep, %DelayAllSystem%
    Send, {w down}
    Sleep, %WalktoEggToEgg%
    Send, {w up}
    Sleep, %DelayAllSystem%
    Send, {e}
    Sleep, 1000
    MainBuyEgg()
    Sleep, %DelayAllSystem%
    Send, {w down}
    Sleep, %WalktoEggToEgg%
    Send, {w up}
    Sleep, %DelayAllSystem%
    Send, {e}
    Sleep, 1000
    MainBuyEgg()
    Sleep, %DelayAllSystem%
    Click, 392, 89
    MouseMove, 770, 20
    PixelSearch, px, py, 528, 133, 592, 182, 0x272930 , 0, Fast RGB
    if (!ErrorLevel) {
        PixelSearch, px, py, 407, 392, 581, 447, 0xF7F7F8 , 0, Fast RGB
        if (!ErrorLevel) {
            loop, 5{
                click, 308, 427
                Sleep, 50
            }
            MouseMove, 770, 20
        }
    }
    Return
}
CommonEgg(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    Loop,{
        PixelSearch, px, py, 255, 263, 546, 345, 0xA86A2C, 0, Fast RGB
        if (!ErrorLevel) {
            PixelSearch, px, py, 255, 263, 546, 345, 0xA58977 , 0, Fast RGB
            if (!ErrorLevel) {
                MouseMove, 129, 325
                PixelSearch, px, py, 258, 342, 541, 380, 0x25EE26 , 0, Fast RGB
                if (!ErrorLevel) {
                    Loop, 3
                    {
                        PixelSearch, Px1, Py1, 258, 342, 541, 380, 0x25EE26 , 0, Fast RGB
                        if (!ErrorLevel) {
                            Click, 364, 364
                            LogDebug("Bought Common Egg")
                            If (Usingwebhook == "1")
                                SendWebhook("Bought Common Egg")
                            EggIsBuy := "1"
                        }
                        Else
                        {
                            LogDebug("Uncommon Egg already bought")
                            MouseMove, 129, 325
                            ExitmenuEgg()
                            Break
                        }
                    }
                    ExitmenuEgg()
                }
                Break
            }
            Else
            {
                Break
            }
        }
        Else
        {
            LogDebug("Common Egg not found")
            Break
        }
    }
}
UncommonEgg(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    Loop,{
        PixelSearch, px, py, 255, 263, 546, 345, 0xAA8D00, 0, Fast RGB
        if (!ErrorLevel) {
            PixelSearch, px, py, 255, 263, 546, 345, 0x592C18 , 0, Fast RGB
            if (!ErrorLevel) {
                MouseMove, 129, 325
                PixelSearch, px, py, 258, 342, 541, 380, 0x25EE26 , 0, Fast RGB
                if (!ErrorLevel) {
                    Loop, 3
                    {
                        PixelSearch, Px1, Py1, 258, 342, 541, 380, 0x25EE26 , 0, Fast RGB
                        if (!ErrorLevel) {
                            Click, 364, 364
                            Sleep, %DelayAllSystem%
                            LogDebug("Bought Uncommon Egg")
                            If (Usingwebhook == "1")
                                SendWebhook("Bought Uncommon Egg")
                            EggIsBuy := "1"
                        }
                        Else
                        {
                            LogDebug("Uncommon Egg already bought")
                            MouseMove, 129, 325
                            ExitmenuEgg()
                            Break
                        }
                    }
                    ExitmenuEgg()
                }
                Break
            }
            Else
            {
                Break
            }
        }
        Else
        {
            LogDebug("Uncommon Egg not found")
            Break
        }
    }
}
RareEgg(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    Loop,{
        PixelSearch, px, py, 255, 263, 546, 345, 0xAA5A00, 0, Fast RGB
        if (!ErrorLevel) {
            PixelSearch, px, py, 255, 263, 546, 345, 0x441E0E , 0, Fast RGB
            if (!ErrorLevel) {
                MouseMove, 129, 325
                PixelSearch, px, py, 258, 342, 541, 380, 0x25EE26 , 0, Fast RGB
                if (!ErrorLevel) {
                    Loop, 3
                    {
                        PixelSearch, Px1, Py1, 258, 342, 541, 380, 0x25EE26 , 0, Fast RGB
                        if (!ErrorLevel) {
                            Click, 364, 364
                            LogDebug("Bought Rare Egg")
                            If (Usingwebhook == "1")
                                SendWebhook("Bought Rare Egg")
                            EggIsBuy := "1"
                        }
                        Else
                        {
                            LogDebug("Rare Egg already bought")
                            MouseMove, 129, 325
                            ExitmenuEgg()
                            Break
                        }
                    }
                    ExitmenuEgg()
                }
                Break
            }
            Else
            {
                Break
            }
        }
        Else
        {
            LogDebug("Rare Egg not found")
            Break
        }
    }
}
LegendaryEgg(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    Loop,{
        PixelSearch, px, py, 255, 263, 546, 345, 0xA58977, 0, Fast RGB
        if (!ErrorLevel) {
            PixelSearch, px, py, 255, 263, 546, 345, 0x441D0E , 0, Fast RGB
            if (!ErrorLevel) {
                MouseMove, 129, 325
                PixelSearch, px, py, 258, 342, 541, 380, 0x25EE26 , 0, Fast RGB
                if (!ErrorLevel) {
                    Loop, 3
                    {
                        PixelSearch, Px1, Py1, 258, 342, 541, 380, 0x25EE26 , 0, Fast RGB
                        if (!ErrorLevel) {
                            Click, 364, 364
                            LogDebug("Bought Legendary Egg")
                            If (Usingwebhook == "1")
                                SendWebhook("Bought Legendary Egg")
                            EggIsBuy := "1"
                            MouseMove, 770, 20
                        }
                        Else
                        {
                            LogDebug("Legendary Egg already bought")
                            MouseMove, 129, 325
                            ExitmenuEgg()
                            Break
                        }
                    }
                    ExitmenuEgg()
                }
                Break
            }
            Else
            {
                Break
            }
        }
        Else
        {
            LogDebug("Legendary Egg not found")
            Break
        }
    }
}
MythicalEgg(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    Loop,{
        PixelSearch, px, py, 255, 263, 546, 345, 0x705B44, 0, Fast RGB
        if (!ErrorLevel) {
            PixelSearch, px, py, 255, 263, 546, 345, 0x803838 , 0, Fast RGB
            if (!ErrorLevel) {
                MouseMove, 770, 20
                PixelSearch, px, py, 258, 342, 541, 380, 0x25EE26 , 0, Fast RGB
                if (!ErrorLevel) {
                    Loop, 3
                    {
                        PixelSearch, Px1, Py1, 258, 342, 541, 380, 0x25EE26 , 0, Fast RGB
                        if (!ErrorLevel) {
                            Click, 364, 364
                            LogDebug("Bought Mythical Egg")
                            If (Usingwebhook == "1")
                                SendWebhook("Bought Mythical Egg" . (discordUserID != "" ? " <@" . discordUserID . ">" : ""))
                            EggIsBuy := "1"
                            MouseMove, 770, 20
                        }
                        Else
                        {
                            LogDebug("Mythical Egg already bought")
                            ExitmenuEgg()
                            MouseMove, 129, 325
                            Break
                        }
                    }
                    ExitmenuEgg()
                }
                Break
            }
            Else
            {
                Break
            }
        }
        Else
        {
            LogDebug("Mythical Egg not found")
            Break
        }
    }
}
BugEgg(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    Loop,{
        PixelSearch, px, py, 255, 263, 546, 345, 0x382F4F, 0, Fast RGB
        if (!ErrorLevel) {
            PixelSearch, px, py, 255, 263, 546, 345, 0xB28070 , 0, Fast RGB
            if (!ErrorLevel) {
                MouseMove, 129, 325
                PixelSearch, px, py, 258, 342, 541, 380, 0x25EE26 , 0, Fast RGB
                if (!ErrorLevel) {
                    Loop, 3
                    {
                        PixelSearch, Px1, Py1, 258, 342, 541, 380, 0x25EE26 , 0, Fast RGB
                        if (!ErrorLevel) {
                            Click, 364, 364
                            LogDebug("Bought Bug Egg")
                            If (Usingwebhook == "1")
                                SendWebhook("Bought Bug Egg" . (discordUserID != "" ? " <@" . discordUserID . ">" : ""))
                            EggIsBuy := "1"
                        }
                        Else
                        {
                            LogDebug("Bug Egg already bought")
                            ExitmenuEgg()
                            MouseMove, 129, 325
                            Break
                        }
                    }
                    ExitmenuEgg()
                }
                Break
            }
            Else
            {
                Break
            }
        }
        Else
        {
            LogDebug("Bug Egg not found")
            Break
        }
    }
}
BuyAllTopCosmetic(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    if (CosmeticShop == "0")
        GoToCosmeticShop()
    MouseMove, 391, 337
    Sleep, 300
    PixelSearch, px, py, 118, 322, 213, 364, 0xA9A9A9, 0, Fast RGB
    if (!ErrorLevel){
        LogDebug("Bought Cosmetic [Top]: 1 already bought or not available")
    }
    Else
    {
        Loop, %ClickBuy%
        {
            Click, 168, 341
            Sleep, 50
        }
        LogDebug("Bought Cosmetic [Top]: 1")
        If (Usingwebhook == "1")
            SendWebhook("Bought Cosmetic [Top]: 1")
    }
    Sleep, 300
    PixelSearch, px, py, 307, 318, 401, 362, 0xA9A9A9, 0, Fast RGB
    if (!ErrorLevel){
        LogDebug("Bought Cosmetic [Top]: 2 already bought or not available")
    }
    Else
    {
        Loop, %ClickBuy%
        {
            Click, 352, 343
            Sleep, 50
        }
        LogDebug("Bought Cosmetic [Top]: 2")
        If (Usingwebhook == "1")
            SendWebhook("Bought Cosmetic [Top]: 2")
    }
    Sleep, 300
    PixelSearch, px, py, 496, 319, 590, 363, 0xA9A9A9, 0, Fast RGB
    if (!ErrorLevel){
        LogDebug("Bought Cosmetic [Top]: 3 already bought or not available")
    }
    Else
    {
        Loop, %ClickBuy%
        {
            Click, 547, 343
            Sleep, 50
        }
        LogDebug("Bought Cosmetic [Top]: 3")
        If (Usingwebhook == "1")
            SendWebhook("Bought Cosmetic [Top]: 3")
    }
    CosmeticShop := "1"
    Sleep, %DelayAllSystem%
    MouseMove, 391, 337
}
BuyAllDownCosmetic(){
    if (CosmeticShop == "0")
        GoToCosmeticShop()
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    MouseMove, 391, 337
    Sleep, 300
    PixelSearch, px, py, 142, 426, 221, 457, 0xA9A9A9, 0, Fast RGB
    if (!ErrorLevel){
        LogDebug("Bought Cosmetic [Down]: 1 already bought or not available")
    }
    Else
    {
        Loop, %ClickBuy%
        {
            Click, 180, 445
            Sleep, 50
        }
        LogDebug("Bought Cosmetic [Down]: 1")
        If (Usingwebhook == "1")
            SendWebhook("Bought Cosmetic [Down]: 1")
    }
    Sleep, 300
    PixelSearch, px, py, 228, 423, 308, 455, 0xA9A9A9, 0, Fast RGB
    if (!ErrorLevel){
        LogDebug("Bought Cosmetic [Down]: 2 already bought or not available")
    }
    Else
    {
        Loop, %ClickBuy%
        {
            Click, 270, 444
            Sleep, 50
        }
        LogDebug("Bought Cosmetic [Down]: 2")
        If (Usingwebhook == "1")
            SendWebhook("Bought Cosmetic [Down]: 2")
    }
    Sleep, 300
    PixelSearch, px, py, 313, 429, 394, 459, 0xA9A9A9, 0, Fast RGB
    if (!ErrorLevel){
        LogDebug("Bought Cosmetic [Down]: 3 already bought or not available")
    }
    Else
    {
        Loop, %ClickBuy%
        {
            Click, 356, 444
            Sleep, 50
        }
        LogDebug("Bought Cosmetic [Down]: 3")
        If (Usingwebhook == "1")
            SendWebhook("Bought Cosmetic [Down]: 3")
    }
    Sleep, 300
    PixelSearch, px, py, 400, 428, 485, 458, 0xA9A9A9, 0, Fast RGB
    if (!ErrorLevel){
        LogDebug("Bought Cosmetic [Down]: 4 already bought or not available")
    }
    Else
    {
        Loop, %ClickBuy%
        {
            Click, 446, 445
            Sleep, 50
        }
        LogDebug("Bought Cosmetic [Down]: 4")
        If (Usingwebhook == "1")
            SendWebhook("Bought Cosmetic [Down]: 4")
    }
    Sleep, 300
    PixelSearch, px, py, 487, 418, 566, 457, 0xA9A9A9, 0, Fast RGB
    if (!ErrorLevel){
        LogDebug("Bought Cosmetic [Down]: 5 already bought or not available")
    }
    Else
    {
        Loop, %ClickBuy%
        {
            Click, 529, 442
            Sleep, 50
        }
        LogDebug("Bought Cosmetic [Down]: 5")
        If (Usingwebhook == "1")
            SendWebhook("Bought Cosmetic [Down]: 5")
    }
    Sleep, 300
    PixelSearch, px, py, 572, 421, 658, 457, 0xA9A9A9, 0, Fast RGB
    if (!ErrorLevel){
        LogDebug("Bought Cosmetic [Down]: 6 already bought or not available")
    }
    Else
    {
        Loop, %ClickBuy%
        {
            Click, 614, 442
            Sleep, 50
        }
        LogDebug("Bought Cosmetic [Down]: 6")
        If (Usingwebhook == "1")
            SendWebhook("Bought Cosmetic [Down]: 6")
    }
    CosmeticShop := "1"
    Sleep, %DelayAllSystem%
    MouseMove, 391, 337
}
GoToCosmeticShop(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    MouseMove, 391, 337
    Send, {1}
    Sleep, 1000
    Click
    Sleep, 2000
    Send, {w Down}
    Sleep, %WalktoCosmeticShop%
    Send, {w Up}
    Sleep, %DelayAllSystem%
    Send, {e}
    Sleep, 2000
}
OffMenuCosmetic(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    MouseMove, 391, 337
    Sleep, %DelayAllSystem%
    Loop, 5
    {
        Click, 667, 160
        Sleep, 50
    }
    Sleep, %DelayAllSystem%
    Click, 394, 96
    MouseMove, 391, 337
    Return
}
GetStartt(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    Click, 393, 93
    Sleep, %DelayAllSystem%
    MouseMove, 391, 337
    Sleep, %DelayAllSystem%
    PixelSearch, px, py, 3, 204, 67, 268, 0xFFFFFF , 0, Fast RGB
    if (!ErrorLevel) {
        Click, 252, 34
        Sleep, 100
    }
    Sleep, %DelayAllSystem%
    loop, 1{
        Send, {1}
        Sleep, 100
        Send, {2}
        Sleep, 100
        Send, {3}
        Sleep, 100
        Send, {4}
        Sleep, 100
        Send, {5}
        Sleep, 100
        Send, {6}
        Sleep, 100
        Send, {7}
        Sleep, 100
        Send, {8}
        Sleep, 100
        Send, {9}
        Sleep, 100
        Send, {0}
        Sleep, 100
        Send, {2}
        Sleep, %DelayAllSystem%
        Loop, 3 {
            PixelSearch, px, py, 67, 542, 727, 582, 0x5A8EE9 , 0, Fast RGB
            if (!ErrorLevel) {
                Send, {2}
            }
            Sleep, %DelayAllSystem%
        }
        Send, {w}
        Sleep, 100
        Send, {a}
        Sleep, 100
        Send, {s}
        Sleep, 100
        Send, {d}
        Sleep, 100
        MouseMove, 391, 337
        Sleep, 100
        click
        Sleep, 100
        Click Left
    }
    Sleep, %DelayAllSystem%
    loop, 10 {
        Send, +{F10}
        Sleep, 200
    }
    Sleep, %DelayAllSystem%
    loop, 3{
        Send, {Tab}
        Sleep, 50
    }
    Sleep, %DelayAllSystem%
    loop, 3{
        Send, {/}
        Sleep, 50
    }
    Click, 136, 35
    Sleep, 100
    MouseMove, 391, 337
    Sleep, %DelayAllSystem%
    Sleep, 5
    loop, 5{
        Click, 562, 74
        Sleep, 50
    }
    Sleep, %DelayAllSystem%
    Click, 396, 91
    Sleep, %DelayAllSystem%
    PixelSearch, px, py, 3, 204, 67, 268, 0xFFFFFF , 0, Fast RGB
    if (!ErrorLevel) {
    }
    Else
    {
        Sleep, 100
        Click, 252, 34
    }
    Sleep, %DelayAllSystem%
    Click, 104, 558, {Right Down}
    Sleep, 10
    Click, 391, 337, {Right Up}
    Click, 167, 562, {Right Down}
    Sleep, 10
    Click, 391, 337, {Right Up}
    Sleep, 10
    Click, 236, 564, {Right Down}
    Sleep, 10
    Click, 391, 337, {Right Up}
    Sleep, 10
    Click, 298, 562, {Right Down}
    Sleep, 10
    Click, 391, 337, {Right Up}
    Sleep, 10
    Click, 362, 560, {Right Down}
    Sleep, 10
    Click, 391, 337, {Right Up}
    Sleep, 10
    Click, 425, 559, {Right Down}
    Sleep, 10
    Click, 391, 337, {Right Up}
    Sleep, 10
    Click, 492, 562, {Right Down}
    Sleep, 10
    Click, 391, 337, {Right Up}
    Sleep, 10
    Click, 562, 561, {Right Down}
    Sleep, 10
    Click, 391, 337, {Right Up}
    Sleep, 10
    Click, 627, 561, {Right Down}
    Sleep, 10
    Click, 391, 337, {Right Up}
    Sleep, 10
    Click, 692, 560, {Right Down}
    Sleep, 10
    Click, 391, 337, {Right Up}
    Sleep, %DelayAllSystem%
    loop, 5{
        Click, 34, 235
        Sleep, 50
    }
    Sleep, %DelayAllSystem%
    loop, 5{
        Click, 701, 224
        Sleep, 50
    }
    Sleep, %DelayAllSystem%
    Send, {r}
    Send, {e}
    Send, {c}
    Send, {a}
    Send, {l}
    Send, {l}
    Sleep, %DelayAllSystem%
    Click, 106, 279, {Right Down}
    Sleep, 10
    Click, 102, 554, {Right Up}
    Sleep, %DelayAllSystem%
    loop, 5{
        Click, 701, 224
        Sleep, 50
    }
    Sleep, %DelayAllSystem%
    Send, {r}
    Send, {a}
    Send, {d}
    Send, {a}
    Send, {r}
    Sleep, %DelayAllSystem%
    Click, 106, 279, {Right Down}
    Sleep, 10
    Click, 173, 566, {Right Up}
    Sleep, %DelayAllSystem%
    loop, 5{
        Click, 701, 228
        Sleep, 30
    }
    Sleep, %DelayAllSystem%
    loop, 5{
        Click,32, 502
        Sleep, 30
    }
    Sleep, %DelayAllSystem%
    loop, 30{
        Click,104, 283
        Sleep, 30
    }
    Sleep, %DelayAllSystem%
    loop, 5{
        Click,32, 433
        Sleep, 30
    }
    Sleep, %DelayAllSystem%
    loop, 30{
        Click,104, 283
        Sleep, 30
    }
    loop, 5{
        Click,32, 299
        Sleep, 30
    }
    Sleep, %DelayAllSystem%
    loop, 30{
        Click,104, 283
        Sleep, 30
    }
    Sleep, %DelayAllSystem%
    Click, 252, 34
    Sleep, %DelayAllSystem%
    Send, {2}
    Sleep, %DelayAllSystem%
    Loop, 3 {
        PixelSearch, px, py, 67, 542, 727, 582, 0x5A8EE9 , 0, Fast RGB
        if (!ErrorLevel) {
            Send, {3}
        }
        Sleep, %DelayAllSystem%
    }
    MouseMove, 391, 337
}
Runload(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    MacroIsRun := "0"
    robloxwindowsmini()
    If (SaveTime == "0"){
        30MStonkShopNow := "1"
    }
    CheckOutMenu()
    Sleep, 100
    if FileExist(notifyMain) {
        if (PlayNotifySound = "1") {
            SoundPlay, %notifyMain%
        }
    }
    If (CheckerRun == "1"){
        If (GetStartt == "0"){
            GetStartt()
            GetStartt := "1"
        }
    }
    Send, {2}
    Sleep, %DelayAllSystem%
    Loop, 3 {
        PixelSearch, px, py, 67, 542, 727, 582, 0x5A8EE9 , 0, Fast RGB
        if (!ErrorLevel) {
            Send, {3}
        }
        Sleep, %DelayAllSystem%
    }
    Main_SyncCam()
    CheckOutMenu()
    LogDebug("Go seed shop")
    BuySeedOnStock()
    CheckOutMenu()
    LogDebug("Go gread shop")
    BuyGearsOnStock()
    CheckOutMenu()
    If (30MStonkShopNow == "1"){
        LogDebug("Go eggs shop")
        BuyEggsOnStock()
    }
    Else
    {
        OffMenuShop()
    }
    CheckOutMenu()
    LogDebug("Go cosmetic shop")
    BuyCosmeticOnStock()
    CheckOutMenu()
    MacroIsRun := "1"
    if FileExist(notifyMain) {
        if (PlayNotifySound = "1") {
            SoundPlay, %notifyMain%
        }
    }
}
CheckOutMenu(){
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    PixelSearch, px, py, 448, 35, 626, 119, 0xD60101, 0, Fast RGB
    if (!ErrorLevel) {
        PixelSearch, px, py, 191, 110, 603, 483, 0x272930, 0, Fast RGB
        if (!ErrorLevel) {
            Send, {o Down}
            Sleep, 500
            Send, {o Up}
            MouseMove, 770, 20
            Send, {Esc}
            Sleep, 1000
            Send, {Esc}
            If (AntiMenu == "1")
                Main_SyncCam()
        }
    }
    PixelSearch, px, py, 183, 132, 646, 516, 0xBD9F91 , 0, Fast RGB
    if (!ErrorLevel) {
        PixelSearch, px, py, 183, 132, 646, 516, 0x7B3E23, 0, Fast RGB
        if (!ErrorLevel) {
            Send, {o Down}
            Sleep, 500
            Send, {o Up}
            MouseMove, 770, 20
            loop, 3{
                Send, {WheelDown}
                Sleep, 20
            }
            loop, 3{
                Click, 589, 164
            }
            If (AntiMenu == "1")
                Main_SyncCam()
        }
    }
    PixelSearch, px, py, 440, 144, 568, 178, 0xFFCC00, 0, Fast RGB
    if (!ErrorLevel) {
        PixelSearch, px, py, 159, 116, 618, 524, 0x48200E, 0, Fast RGB
        if (!ErrorLevel) {
            Send, {o Down}
            Sleep, 500
            Send, {o Up}
            MouseMove, 770, 20
            loop, 3{
                Send, {WheelDown}
                Sleep, 20
            }
            loop, 3{
                Click, 584, 165
            }
            loop, 3{
                Click, 552, 175
                Sleep, 20
            }
            If (AntiMenu == "1")
                Main_SyncCam()
        }
    }
    PixelSearch, px, py, 230, 172, 566, 475, 0x370804, 0, Fast RGB
    if (!ErrorLevel) {
        PixelSearch, px, py, 159, 116, 618, 524, 0x47210E, 0, Fast RGB
        if (!ErrorLevel) {
            Send, {o Down}
            Sleep, 500
            Send, {o Up}
            MouseMove, 770, 20
            loop, 3{
                Send, {WheelDown}
                Sleep, 20
            }
            loop, 3{
                Click, 542, 200
                Sleep, 20
            }
            If (AntiMenu == "1")
                Main_SyncCam()
        }
    }
    PixelSearch, px, py, 379, 179, 445, 224, 0xDCFA03, 0, Fast RGB
    if (!ErrorLevel) {
        PixelSearch, px, py, 159, 116, 618, 524, 0x370804, 0, Fast RGB
        if (!ErrorLevel) {
            Send, {o Down}
            Sleep, 500
            Send, {o Up}
            MouseMove, 770, 20
            loop, 3{
                Send, {WheelDown}
                Sleep, 20
            }
            loop, 3{
                Click, 542, 200
                Sleep, 20
            }
            If (AntiMenu == "1")
                Main_SyncCam()
        }
    }
    PixelSearch, px, py, 449, 128, 712, 193, 0xFFCC00, 0, Fast RGB
    if (!ErrorLevel) {
        Send, {o Down}
        Sleep, 500
        Send, {o Up}
        MouseMove, 770, 20
        loop, 3{
            Send, {WheelDown}
            Sleep, 20
        }
        loop, 3{
            Click, 665, 162
            Sleep, 20
        }
        If (AntiMenu == "1")
            Main_SyncCam()
    }
}
BuySeedOnStock(){
    If (Usingwebhook == "1"){
        SendWebhook("---------------------------------------------------------------")
        SendWebhook("[SEEDS SHOP]")
    }
    LogDebug("---------------------------------------------------------------")
    LogDebug("[SEEDS SHOP]")
    If (CarrotSeed = "1")
        CarrotSeed()
    If (StrawberrySeed = "1")
        StrawberrySeed()
    If (BlueberrySeed = "1")
        BlueberrySeed()
    If (OrangeTulip = "1")
        OrangeTulip()
    If (TomatoSeed = "1")
        TomatoSeed()
    If (CornSeed = "1")
        CornSeed()
    If (DaffodilSeed = "1")
        DaffodilSeed()
    If (WatermelonSeed = "1")
        WatermelonSeed()
    If (PumpkinSeed = "1")
        PumpkinSeed()
    If (AppleSeed = "1")
        AppleSeed()
    If (BambooSeed = "1")
        BambooSeed()
    If (CoconutSeed = "1")
        CoconutSeed()
    If (CactusSeed = "1")
        CactusSeed()
    If (DragonFruitSeed = "1")
        DragonFruitSeed()
    If (MangoSeed = "1")
        MangoSeed()
    If (GrapeSeed = "1")
        GrapeSeed()
    If (MushroomSeed = "1")
        MushroomSeed()
    If (PepperSeed = "1")
        PepperSeed()
    If (CacaoSeed = "1")
        CacaoSeed()
    If (BeanStalkSeed = "1")
        BeanStalkSeed()
    If (EmberLilySeed = "1")
        EmberLilySeed()
    If (SugarApple = "1")
        SugarApple()
    If (SeedShop = "1"){
        OffMenuShop()
        SeedShop := "0"
        LogDebug("All seeds bought")
    }
    Else{
        LogDebug("Seed Shop not found")
        If (Usingwebhook == "1")
            SendWebhook("Seed Shop not found")
    }
}
BuyGearsOnStock(){
    If (Usingwebhook == "1"){
        SendWebhook("---------------------------------------------------------------")
        SendWebhook("[GEAR SHOP]")
    }
    LogDebug("---------------------------------------------------------------")
    LogDebug("[GEAR SHOP]")
    If (WateringCan = "1")
        WateringCan()
    If (Trowel = "1")
        Trowel()
    If (RecallWrench = "1")
        RecallWrench()
    If (BasicSprinkler = "1")
        BasicSprinkler()
    If (AdvancedSprinkler = "1")
        AdvancedSprinkler()
    If (GodlySprinkler = "1")
        GodlySprinkler()
    If (LighningRod = "1")
        LighningRod()
    If (MasterSprinkler = "1")
        MasterSprinkler()
    If (CleaningSpray = "1")
        CleaningSpray()
    If (FavoriteTool = "1")
        FavoriteTool()
    If (HarvestTool = "1")
        HarvestTool()
    If (FriendShipPot = "1")
        FriendShipPot()
    If (UsingRecallWrench == "1"){
        loop, 5 {
            Click, 585, 162
            Sleep, 10
        }
        MouseMove, 391, 337
    }
    Else
    {
        If (GearShop = "1"){
            OffMenuShop()
            LogDebug("Bought all Gears")
        }
        Else{
            LogDebug("Gear Shop not found")
            If (Usingwebhook == "1")
                SendWebhook("Gear Shop not found")
        }
    }
    GearShop := "0"
}
BuyEggsOnStock(){
    If (Usingwebhook == "1"){
        SendWebhook("---------------------------------------------------------------")
        SendWebhook("[EGG SHOP]")
    }
    LogDebug("---------------------------------------------------------------")
    LogDebug("[EGG SHOP]")
    if (CommonEgg = "1")
        BuyEgg = "1"
    If (UncommonEgg = "1")
        BuyEgg := "1"
    If (RareEgg = "1")
        BuyEgg := "1"
    If (LegendaryEgg = "1")
        BuyEgg := "1"
    If (MythicalEgg = "1")
        BuyEgg := "1"
    If (BugEgg = "1")
        BuyEgg := "1"
    If (BuyEgg = "1"){
        BuyEgg()
    }
    If (EggIsBuy = "1"){
        EggIsBuy := "0"
        LogDebug("Bought all Eggs")
        If (Usingwebhook == "1")
            SendWebhook("Bought all Eggs")
    }
}
BuyCosmeticOnStock(){
    If (Usingwebhook == "1"){
        SendWebhook("---------------------------------------------------------------")
        SendWebhook("[Cosmetic SHOP]")
    }
    LogDebug("---------------------------------------------------------------")
    LogDebug("[Cosmetic SHOP]")
    If (BuyAllTopCosmetic = "1")
        BuyAllTopCosmetic()
    If (BuyAllDownCosmetic = "1")
        BuyAllDownCosmetic()
    if (CosmeticShop = "1"){
        OffMenuCosmetic()
        CosmeticShop := "0"
        LogDebug("Bought all Cosmetic")
        If (Usingwebhook == "1")
            SendWebhook("Bought all Cosmetic")
    }
}
RunMacroMain(){
    fistrecall := "0"
    LoadConfig()
    IfWinExist, ahk_exe RobloxPlayerBeta.exe
    {
        if (Usingwebhook == "1")
            SendWebhook("[RUNNING]")
        LogDebug("[RUNNING]")
        if FileExist(notifyStart) {
            if (PlayNotifySound = "1") {
                SoundPlay, %notifyStart%
            }
        }
        Runload()
        30MStonkShopNow := "0"
        if (!running) {
            running := true
            SetTimer, CheckTime, 1000
        }
    }
    else {
        MsgBox, 48, , Please open roblox and join in the game to scan windows!!
    }
}
ReloadMacroMain(){
    LogDebug("Reload Macro")
    if FileExist(notifypause) {
        if (PlayNotifySound = "1") {
            SoundPlay, %notifypause%
        }
    }
    Sleep, %DelayAllSystem%
    Reload
}
CheckTime:
    if (isCheckingTime)
        return
    isCheckingTime := true
    FormatTime, curMinute,, mm
    FormatTime, curSecond,, ss
    FormatTime, curHour,, HH
    currentTime := curHour . curMinute
    if (Mod(curMinute, 5) = 0 && curSecond = "00") {
        if (lastMacroRun != currentTime) {
            lastMacroRun := currentTime
            if (MacroIsRun == "1") {
                RunMacroMain()
            }
        }
    }
    if (Mod(curMinute, 30) = 0 && curSecond = "00") {
        if (lastStonkTrigger != currentTime) {
            lastStonkTrigger := currentTime
            30MStonkShopNow := "1"
        }
    }
    isCheckingTime := false
return
F5::
    RunMacroMain()
Return
F6::
    ReloadMacroMain()
Return
F8::
ExitApp