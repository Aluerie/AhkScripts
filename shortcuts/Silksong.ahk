#Requires AutoHotkey v2.0

TraySetIcon("C:\_GAMES\Silksong\Hollow Knight Silksong.exe")

if A_Args[1] = "--modded" {
    ; Modded (you can edit the profile with CogFly)
    Run(
        "`"C:\_GAMES\Silksong\Hollow Knight Silksong.exe`"  "
        "--doorstop-enabled true "
        "--doorstop-target-assembly C:\Users\Me\AppData\Roaming\Cogfly\profiles\Default\BepInEx\core\BepInEx.Preloader.dll"
    )
}
else {
    ; Vanilla
    Run(
        "`"C:\_GAMES\Silksong\Hollow Knight Silksong.exe`"  "
        "--doorstop-enabled false "
    )
}

Sleep 2000
if not WinExist("ahk_exe OverBind.exe") {
    Run("C:\Program Files\OverBind\OverBind.exe")
    Sleep 2000
    if WinExist("ahk_exe OverBind.exe") {
        ; This brings it into the system tray
        WinClose("ahk_exe OverBind.exe")
    }
}

WinWaitClose("ahk_exe Hollow Knight Silksong.exe")
; Cleanup
if ProcessExist("OverBind.exe") {
    ProcessClose("OverBind.exe")
}

; TODO: Add LiveSplit when we are going to start running
