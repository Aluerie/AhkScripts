/*
A Special shortcut to launch Sekiro in Border-less mode and some helper apps with a single click.
*/

#Requires AutoHotkey v2.0
TraySetIcon("C:\_GAMES\Sekiro - Shadows Die Twice\2.ico")

; STEP 1. Launch Sekiro
; Run('powershell.exe Start-Process -FilePath "C:\Users\Me\AppData\Local\garyttierney\me3\config\profiles\sekiro-default.me3" -WindowStyle hidden')
Run('conhost.exe --headless me3.exe launch -p sekiro-default --no-mem-patch')
; Run("C:\_GAMES\Sekiro - Shadows Die Twice\sekiro.exe", "C:\_GAMES\Sekiro - Shadows Die Twice") ; (Mod Engine 1)
Sleep 2000

; STEP 2. Set true border-less window style
WinSetStyle(-0xC40000, "ahk_exe sekiro.exe")
WinMove(0, 0, A_ScreenWidth, A_ScreenHeight, "ahk_exe sekiro.exe")
Sleep 2000

; STEP 3. FPS Unlocked to disable camera auto rotate
; For some reason, FPS Unlock .exe requires admin rights by default and it's just not possible to take them away
; by any normal means. Therefore, we have to launch it via an extra .bat file that fixes it.
Run("C:\_GAMES\Sekiro Helpers\FPSUnlock\launch_no_admin.bat", "C:\_GAMES\Sekiro Helpers\FPSUnlock")
Sleep 2000

; STEP 4. Helper Apps
for index, app in [
    "C:\_GAMES\_Gamer Apps\AutoHitCounter\AutoHitCounter.exe",
    "C:\_GAMES\Sekiro Helpers\SekiroTool.exe",
    "C:\_GAMES\_Gamer Apps\SoulsSpeedruns-Save-Organizer-1.6-windows-bundled\SoulsSpeedruns - Save Organizer - Bundled.exe",
    "C:\_GAMES\_Gamer Apps\Transparent_LiveSplit_Build\LiveSplit.exe",
] {
    Run(app)
    Sleep 2000
}

; STEP 5. Close FPS Unlocker
WinClose("ahk_exe SekiroFpsUnlockAndMore_v1.2.5.2.exe")

; STEP 6. Close helper apps when we close Sekiro
WinWaitClose("ahk_exe sekiro.exe")
for index, window in [
    "SekiroTool",
    "LiveSplit",
    "AutoHitCounter",
    "javaw", ; it's Save Organizer
] {
    ahk_exe := "ahk_exe " window ".exe"
    if WinExist(ahk_exe) {
        WinClose(ahk_exe)
    }
}
