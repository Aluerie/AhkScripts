#Requires AutoHotkey v2.0
; @shortcut Silksong Vanilla
; @shortcut Silksong Modded | --modded
; @shortcut Silksong Release-Modded | --release
; @shortcut Silksong Release-Vanilla | --vanilla-release
; @icon C:\_GAMES\Silksong\goggame-1558393671.ico

TraySetIcon("C:\_GAMES\Silksong\Hollow Knight Silksong.exe")

if A_Args.Length > 0 AND A_Args[1] = "--modded" {
    ; Modded (you can edit the SpeedGym profile with CogFly)
    Run(
        "`"C:\_GAMES\Silksong\Hollow Knight Silksong.exe`" "
        "--doorstop-enabled true "
        "--doorstop-target-assembly C:\Users\Me\AppData\Roaming\Cogfly\profiles\SpeedGym\BepInEx\core\BepInEx.Preloader.dll"
    )
}
else if A_Args.Length > 0 AND A_Args[1] = "--release" {
    ; Release Modded (you can edit the SpeedGym profile with CogFly)
    Run(
        "`"C:\_GAMES\Silksong 28324\Hollow Knight Silksong.exe`" "
        "--doorstop-enabled true "
        "--doorstop-target-assembly C:\Users\Me\AppData\Roaming\Cogfly\profiles\SpeedGym\BepInEx\core\BepInEx.Preloader.dll"
    )
}
else if A_Args.Length > 0 AND A_Args[1] = "--vanilla-release" {
    ; Vanilla Release
    Run(
        "`"C:\_GAMES\Silksong 28324\Hollow Knight Silksong.exe`" "
        "--doorstop-enabled false"
    )
}
else {
    ; Vanilla Latest
    Run(
        "`"C:\_GAMES\Silksong\Hollow Knight Silksong.exe`" "
        "--doorstop-enabled false"
    )
}

Sleep 2000
; OverBind lives in the system tray (hidden window), so check the process, not the window
if not ProcessExist("OverBind.exe") {
    Run("C:\Program Files\OverBind\OverBind.exe")
    Sleep 2000
    if WinExist("ahk_exe OverBind.exe") {
        ; This brings it into the system tray
        WinClose("ahk_exe OverBind.exe")
    }
}

if !WinWait("ahk_exe Hollow Knight Silksong.exe", , 120)
    ExitApp
WinWaitClose("ahk_exe Hollow Knight Silksong.exe")
; Cleanup
if ProcessExist("OverBind.exe") {
    ProcessClose("OverBind.exe")
}

; TODO: Add LiveSplit when we are going to start running
