; A Special shortcut to launch Sekiro in Border-less mode right away without using actual 3rd party apps.
Run("C:\Users\Me\AppData\Local\garyttierney\me3\config\profiles\sekiro-default.me3")
Sleep 5000
WinSetStyle(-0xC40000, "ahk_exe sekiro.exe")
WinMove(0, 0, A_ScreenWidth, A_ScreenHeight, "ahk_exe sekiro.exe")