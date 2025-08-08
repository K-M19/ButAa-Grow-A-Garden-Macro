#SingleInstance, force
#NoEnv
#Persistent
global debugMode := 0
LogDebug(msg) {
    global debugMode
    if (!debugMode)
        return
    FormatTime, timestamp, %A_Now%, yyyy-MM-dd HH:mm:ss
    FileAppend, %timestamp% - %msg%`n, *MacroDebugLog.txt
}
LogDebug("Script launched")
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
global WateringCan := "0"
global Trowel := "0"
global BasicSprinkler := "0"
global AdvancedSprinkler := "0"
global GodlySprinkler := "0"
global LighningRod := "0"
global MasterSprinkler := "0"
global GearShop := "0"
global SeedShop := "0"
running := false
if !FileExist("config.ini")
{
    SaveConfig()
    MsgBox, 48, ,Before you start using macros, I recommend you take a look at the (config.ini) file before using it.`n`n`Code:00X00EX1.
    ExitApp
}
WinActivate, ahk_exe RobloxPlayerBeta.exe
SaveConfig() {
    global
    FileAppend, [True = 1 and False = 0]`n, config.ini
    FileAppend, [Macro by K-M19]`n`n, config.ini
    FileAppend, [Seeds]`n, config.ini
    IniWrite, %CarrotSeed%, config.ini, Seeds, CarrotSeed
    IniWrite, %StrawberrySeed%, config.ini, Seeds, StrawberrySeed
    IniWrite, %BlueberrySeed%, config.ini, Seeds, BlueberrySeed
    IniWrite, %OrangeTulip%, config.ini, Seeds, OrangeTulip
    IniWrite, %TomatoSeed%, config.ini, Seeds, TomatoSeed
    IniWrite, %CornSeed%, config.ini, Seeds, CornSeed
    IniWrite, %DaffodilSeed%, config.ini, Seeds, DaffodilSeed
    IniWrite, %WatermelonSeed%, config.ini, Seeds, WatermelonSeed
    IniWrite, %PumpkinSeed%, config.ini, Seeds, PumpkinSeed
    IniWrite, %AppleSeed%, config.ini, Seeds, AppleSeed
    IniWrite, %BambooSeed%, config.ini, Seeds, BambooSeed
    IniWrite, %CoconutSeed%, config.ini, Seeds, CoconutSeed
    IniWrite, %CactusSeed%, config.ini, Seeds, CactusSeed
    IniWrite, %DragonFruitSeed%, config.ini, Seeds, DragonFruitSeed
    IniWrite, %MangoSeed%, config.ini, Seeds, MangoSeed
    IniWrite, %GrapeSeed%, config.ini, Seeds, GrapeSeed
    IniWrite, %MushroomSeed%, config.ini, Seeds, MushroomSeed
    IniWrite, %PepperSeed%, config.ini, Seeds, PepperSeed
    IniWrite, %WateringCan%, config.ini, Gear, WateringCan
    IniWrite, %Trowel%, config.ini, Gear, Trowel
    IniWrite, %BasicSprinkler%, config.ini, Gear, BasicSprinkler
    IniWrite, %AdvancedSprinkler%, config.ini, Gear, AdvancedSprinkler
    IniWrite, %GodlySprinkler%, config.ini, Gear, GodlySprinkler
    IniWrite, %LighningRod%, config.ini, Gear, LighningRod
    IniWrite, %MasterSprinkler%, config.ini, Gear, MasterSprinkler
    IniWrite, %debugMode%, config.ini, Dev, debugMode
}
LoadConfig() {
    global
    IniRead, CarrotSeed, config.ini, Seeds, CarrotSeed, 0
    IniRead, StrawberrySeed, config.ini, Seeds, StrawberrySeed, 0
    IniRead, BlueberrySeed, config.ini, Seeds, BlueberrySeed, 0
    IniRead, OrangeTulip, config.ini, Seeds, OrangeTulip, 0
    IniRead, TomatoSeed, config.ini, Seeds, TomatoSeed, 0
    IniRead, CornSeed, config.ini, Seeds, CornSeed, 0
    IniRead, DaffodilSeed, config.ini, Seeds, DaffodilSeed, 0
    IniRead, WatermelonSeed, config.ini, Seeds, WatermelonSeed, 0
    IniRead, PumpkinSeed, config.ini, Seeds, PumpkinSeed, 0
    IniRead, AppleSeed, config.ini, Seeds, AppleSeed, 0
    IniRead, BambooSeed, config.ini, Seeds, BambooSeed, 0
    IniRead, CoconutSeed, config.ini, Seeds, CoconutSeed, 0
    IniRead, CactusSeed, config.ini, Seeds, CactusSeed, 0
    IniRead, DragonFruitSeed, config.ini, Seeds, DragonFruitSeed, 0
    IniRead, MangoSeed, config.ini, Seeds, MangoSeed, 0
    IniRead, GrapeSeed, config.ini, Seeds, GrapeSeed, 0
    IniRead, MushroomSeed, config.ini, Seeds, MushroomSeed, 0
    IniRead, PepperSeed, config.ini, Seeds, PepperSeed, 0
    IniRead, WateringCan, config.ini, Gear, WateringCan, 0
    IniRead, Trowel, config.ini, Gear, Trowel, 0
    IniRead, BasicSprinkler, config.ini, Gear, BasicSprinkler, 0
    IniRead, AdvancedSprinkler, config.ini, Gear, AdvancedSprinkler, 0
    IniRead, GodlySprinkler, config.ini, Gear, GodlySprinkler, 0
    IniRead, LighningRod, config.ini, Gear, LighningRod, 0
    IniRead, MasterSprinkler, config.ini, Gear, MasterSprinkler, 0
}
IniRead, debugMode, config.ini, Dev, debugMode, 0
WinGetActiveStats, Title, WindowWidth, WindowHeight, WindowLeft, WindowTop
ResolutionScaling := 2560/WindowWidth
runtimeS := 0
runtimeM := 0
runtimeH := 0
TooltipX := WindowWidth/20
Tooltip1 := (WindowHeight/2)-(20*9)
Tooltip2 := (WindowHeight/2)-(20*8)
Tooltip3 := (WindowHeight/2)-(20*7)
Tooltip4 := (WindowHeight/2)-(20*6)
Tooltip5 := (WindowHeight/2)-(20*5)
Tooltip6 := (WindowHeight/2)-(20*4)
Tooltip7 := (WindowHeight/2)-(20*3)
Tooltip8 := (WindowHeight/2)-(20*2)
Tooltip11 := (WindowHeight/2)+(20*1)
tooltip, ButAa-Grow.A.Garden-Macro (%local_version%), %TooltipX%, %Tooltip1%, 1
tooltip, Runtime: 0h 0m 0s, %TooltipX%, %Tooltip2%, 2
tooltip, Macro [Stop] , %TooltipX%, %Tooltip4%, 4
tooltip, Press "F5" To Start, %TooltipX%, %Tooltip5%, 5
tooltip, Press "F6" To Reload, %TooltipX%, %Tooltip6%, 6
tooltip, Press "F8" To Exit, %TooltipX%, %Tooltip7%, 7
tooltip, GitHub: K-M19/ButAa-Grow.A.Garden-Macro, %TooltipX%, %Tooltip8%, 8
runtime:
    runtimeS++
    if (runtimeS >= 60)
    {
        runtimeS := 0
        runtimeM++
    }
    if (runtimeM >= 60)
    {
        runtimeM := 0
        runtimeH++
    }
    if WinActive("Roblox")
    {
        tooltip, Runtime: %runtimeH%h %runtimeM%m %runtimeS%s, %TooltipX%, %Tooltip2%, 2
    }
    else
    {
        MsgBox, 48, , Please open roblox and join in the game to scan windows!!
        exitapp
    }
return
CarrotSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Click, 750, 450
    Sleep, 500
    Loop, 25 {
        Click, 750, 650
        LogDebug("Buy Carrot Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 450
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 300
    SeedShop := "1"
    Return
}
StrawberrySeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Click, 750, 730
    Sleep, 500
    Loop, 25
    {
        Click, 750, 670
        LogDebug("Buy Strawberry Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 450
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 300
    SeedShop := "1"
    Return
}
BlueberrySeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 3}
    Sleep, 500
    Click, 750, 500
    Sleep, 500
    Loop, 25
    {
        Click, 750, 680
        LogDebug("Buy Blueberry Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 500
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
OrangeTulip(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 4}
    Sleep, 500
    Click, 750, 710
    Sleep, 500
    Loop, 25
    {
        Click, 750, 690
        LogDebug("Buy Orange Tulip")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 500
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
TomatoSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 5}
    Sleep, 500
    Click, 750, 750
    Sleep, 500
    Loop, 25
    {
        Click, 750, 680
        LogDebug("Buy Tomato Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 500
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
CornSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 7}
    Sleep, 500
    Click, 750, 750
    Sleep, 500
    Loop, 25
    {
        Click, 750, 690
        LogDebug("Buy Corn Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 500
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
DaffodilSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 9}
    Sleep, 500
    Click, 750, 750
    Sleep, 500
    Loop, 25
    {
        Click, 750, 700
        LogDebug("Buy Daffodil Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 500
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
WatermelonSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 10}
    Sleep, 500
    Click, 750, 830
    Sleep, 500
    Loop, 25
    {
        Click, 750, 730
        LogDebug("Buy Watermelon Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 500
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
PumpkinSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 13}
    Sleep, 500
    Click, 750, 670
    Sleep, 500
    Loop, 25
    {
        Click, 750, 750
        LogDebug("Buy Pumpkin Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 500
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
AppleSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 16}
    Sleep, 500
    Click, 750, 500
    Sleep, 500
    Loop, 25
    {
        Click, 750, 750
        LogDebug("Buy Apple Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 500
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
BambooSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 16}
    Sleep, 500
    Click, 750, 730
    Sleep, 500
    Loop, 25
    {
        Click, 750, 760
        LogDebug("Buy Bamboo Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 600
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
CoconutSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 18}
    Sleep, 500
    Click, 750, 800
    Sleep, 500
    Loop, 25
    {
        Click, 750, 780
        LogDebug("Buy Coconut Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 550
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
CactusSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 20}
    Sleep, 500
    Click, 750, 750
    Sleep, 500
    Loop, 25
    {
        Click, 750, 800
        LogDebug("Buy Cactus Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 550
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
DragonFruitSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 23}
    Sleep, 500
    Click, 750, 600
    Sleep, 500
    Loop, 25
    {
        Click, 750, 800
        LogDebug("Buy Dragon Fruit Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 550
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
MangoSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 23}
    Sleep, 500
    Click, 750, 800
    Sleep, 500
    Loop, 25
    {
        Click, 750, 800
        LogDebug("Buy Mango Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 600
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
GrapeSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 26}
    Sleep, 500
    Click, 750, 600
    Sleep, 500
    Loop, 25
    {
        Click, 750, 800
        LogDebug("Buy Grape Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 600
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
MushroomSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 27}
    Sleep, 500
    Click, 750, 820
    Sleep, 500
    Loop, 10
    {
        Click, 750, 820
        LogDebug("Buy Mushroom Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 600
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
PepperSeed(){
    if (SeedShop) = "0"
        Openshopseeds()
    MouseMove, 962, 550
    Sleep, 500
    Send, {WheelDown 40}
    Sleep, 500
    Click, 750, 820
    Sleep, 500
    Loop, 10
    {
        Click, 750, 850
        LogDebug("Buy Pepper Seed")
        Sleep, 15
    }
    Sleep, 500
    Click, 750, 600
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 500
    SeedShop := "1"
    Return
}
WateringCan(){
    if (GearShop) = "0"
        Runtogearshop()
    MouseMove, 957, 590
    Sleep, 500
    Click, 861, 444
    Sleep, 500
    Loop, 25 {
        Click, 760, 656
        LogDebug("Buy Watering Can")
        Sleep, 15
    }
    Sleep, 500
    Click, 861, 444
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 300
    GearShop := "1"
    Return
}
Trowel(){
    if (GearShop) = "0"
        Runtogearshop()
    MouseMove, 957, 590
    Sleep, 500
    Click, 882, 695
    Sleep, 500
    loop, 25 {
        Click, 799, 667
        LogDebug("Buy Trowel")
        Sleep, 15
    }
    Sleep, 500
    Click, 925, 458
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 300
    GearShop := "1"
    Return
}
BasicSprinkler(){
    if (GearShop) = "0"
        Runtogearshop()
    MouseMove, 957, 590
    Sleep, 500
    Send, {WheelDown 3}
    Sleep, 500
    click, 975, 540
    Sleep, 500
    Loop, 25 {
        Click, 747, 673
        LogDebug("Buy Basic Sprinkler")
        Sleep, 15
    }
    Sleep, 500
    Click, 908, 468
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 300
    GearShop := "1"
    Return
}
AdvancedSprinkler(){
    if (GearShop) = "0"
        Runtogearshop()
    MouseMove, 957, 590
    Sleep, 500
    Send, {WheelDown 5}
    Sleep, 500
    Click, 881, 510
    Sleep, 500
    Loop, 25 {
        Click, 744, 687
        LogDebug("Buy Advanced Sprinkler")
        Sleep, 15
    }
    Sleep, 500
    Click, 933, 475
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 300
    GearShop := "1"
    Return
}
GodlySprinkler(){
    if (GearShop) = "0"
        Runtogearshop()
    MouseMove, 957, 590
    Sleep, 500
    Send, {WheelDown 7}
    Sleep, 500
    Click, 951, 498
    Sleep, 500
    Loop, 25 {
        Click, 738, 708
        LogDebug("Buy Godly Sprinkler")
        Sleep, 15
    }
    Sleep, 500
    Click, 933, 485
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 300
    GearShop := "1"
    Return
}
LighningRod(){
    if (GearShop) = "0"
        Runtogearshop()
    MouseMove, 957, 590
    Sleep, 500
    Send, {WheelDown 40}
    Sleep, 500
    click, 895, 500
    Sleep, 500
    Loop, 25 {
        Click, 732, 708
        LogDebug("Buy Lighning Rod")
        Sleep, 15
    }
    Sleep, 500
    Click, 925, 494
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 300
    GearShop := "1"
    Return
}
MasterSprinkler(){
    if (GearShop) = "0"
        Runtogearshop()
    MouseMove, 957, 590
    Sleep, 500
    Send, {WheelDown 40}
    Sleep, 500
    Click, 932, 751
    Sleep, 500
    Loop, 25 {
        Click, 745, 838
        LogDebug("Buy Master Sprinkler")
        Sleep, 15
    }
    Sleep, 500
    Click, 910, 623
    Sleep, 500
    Send, {WheelUp 40}
    Sleep, 300
    GearShop := "1"
    Return
}
Runtogearshop(){
    Sleep, 500
    MouseMove, 959, 540
    Sleep, 500
    Send, {WheelUp 80}
    Sleep, 500
    Send, {WheelDown 7}
    Sleep, 500
    MouseMove, 959, 540
    Sleep, 500
    Click, 953, 118
    Sleep, 500
    Click, 655, 116
    Sleep, 500
    MouseMove, 959, 540
    LogDebug("Run To Gear Shop")
    Send, {a down}
    Sleep, 16200
    Send, {a up}
    Sleep, 500
    LogDebug("E Key")
    Send, {e}
    Sleep, 2000
    Click, 1267, 501
    Sleep, 500
    MouseMove, 959, 540
}
Openshopseeds(){
    Sleep, 500
    MouseMove, 958, 508
    Sleep, 500
    Click, 677, 113
    LogDebug("Click Seeds tab")
    Sleep, 500
    MouseMove, 958, 508
    Sleep, 500
    Send, {e}
    LogDebug("E Key")
    Sleep, 1500
    Send, {WheelUp 40}
    Sleep, 500
}
OffMenuShop(){
    Sleep, 500
    click, 1293, 244
    LogDebug("Exit menu")
    Sleep, 500
    Click, 956, 123
    Sleep, 500
    LogDebug("Back Garden")
    MouseMove, 958, 508
}
F8::
    LogDebug("Exit Macro")
ExitApp
F5::
    settimer, runtime, 1000
    LogDebug("[RUNNING]")
    tooltip, Macro [RUNNING] , %TooltipX%, %Tooltip4%, 4
    if (!running) {
        running := true
        SetTimer, CheckTime, 1000
    }
return
F6::
    LogDebug("Reload Macro")
    Sleep, 500
    Reload
return
RemoveTip:
    ToolTip
return
CheckTime:
    if (!running)
        return
    FormatTime, curMinute,, mm
    FormatTime, curSecond,, ss
    if (Mod(curMinute, 5) = 0 && curSecond = "00") {
        Runload()
    }
return
zoomcam(){
    LogDebug("Start ZoomCam")
    Sleep, 500
    Send, {WheelUp 80}
    Sleep, 500
    Send, {WheelDown 80}
    Sleep, 300
    AutoLookDelay := 200
    LookDownX := WindowWidth/2
    LookDownY := WindowHeight/4
    LogDebug("Start DownCam")
    send {rbutton up}
    sleep, 200
    mousemove, WindowWidth/2, WindowHeight/4
    sleep, 200
    send {rbutton down}
    sleep, 200
    DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 10000)
    sleep, 200
    send {rbutton up}
    sleep, 200
    mousemove, WindowWidth/2, WindowHeight/4
    sleep, 200
    MouseMove, 958, 508
}
Runload() {
    LoadConfig()
    zoomcam()
    LogDebug("RunLoadOut")
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
    Sleep, 500
    SeedShop := "0"
    OffMenuShop()
    Sleep, 500
    If (WateringCan = "1")
        WateringCan()
    If (Trowel = "1")
        Trowel()
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
    Sleep, 500
    GearShop := "0"
    OffMenuShop()
}