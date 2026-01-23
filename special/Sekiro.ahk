/*
A Special shortcut to launch Sekiro in Border-less mode right away without using actual 3rd party apps.
*/

#Requires AutoHotkey v2.0
; TraySetIcon("C:\_GAMES\Sekiro - Shadows Die Twice\2.ico")

; STEP 1. Launch Sekiro Mod Engine 3 profile and set true border-less
; Deprecated: for some reason ME3 was crashing my sekiro and I was too lazy to figure out why / fix it.
; Run("C:\Users\Me\AppData\Local\garyttierney\me3\config\profiles\sekiro-default.me3")
; Run("C:\Users\Me\AppData\Local\garyttierney\me3\config\profiles\test-sekiro-profile\Test.me3")

; STEP 1. Launch Sekiro (Mod Engine 1 patched)
Run("C:\_GAMES\Sekiro - Shadows Die Twice\sekiro.exe", "C:\_GAMES\Sekiro - Shadows Die Twice")
Sleep 2000

; STEP 2. Set true border-less
WinSetStyle(-0xC40000, "ahk_exe sekiro.exe")
WinMove(0, 0, A_ScreenWidth, A_ScreenHeight, "ahk_exe sekiro.exe")
Sleep 900

; STEP 3. FPS Unlocked to disable camera auto rotate (I hate it, it's such a dumb "feature" for kbm)
; I also launch "no_admin" bat-script because for some reason, the exe is hard-coded to have admin rights and
; I couldn't manage to remove those from it using tools in the native windows.
Run("C:\_GAMES\Sekiro Helpers\FPSUnlock\launch_no_admin.bat", "C:\_GAMES\Sekiro Helpers\FPSUnlock")
Sleep 4984

; STEP 4. Sekiro Tool
Run("C:\_GAMES\Sekiro Helpers\SekiroTool.exe")
Sleep 4984

; STEP 5. Back to Sekiro
; Have to wait ~10 seconds as sometimes it takes long for FPS Unlock to patch the game.
WinClose("ahk_exe SekiroFpsUnlockAndMore_v1.2.5.2.exe")
WinActivate("ahk_exe sekiro.exe")

; STEP 6. Close Sekiro Tool when we close Sekiro
WinWaitClose("ahk_exe sekiro.exe")
if WinExist("ahk_exe SekiroTool.exe") {
    WinClose("ahk_exe SekiroTool.exe")
}
