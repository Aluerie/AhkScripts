; LEAGUE TERRITORY

#HotIf WinActive("ahk_exe League of Legends.exe")

CapsLock::Numpad4

<#D:: ComObject("Shell.Application").ToggleDesktop()

#HotIf WinActive("ahk_exe League of Legends.exe") && Getkeystate("LShift", "p")
LWin & S:: Run("ms-screenclip:")

#HotIf WinActive("ahk_exe League of Legends.exe") && Getkeystate("LWin", "p")
LShift & S:: Run("ms-screenclip:")

a:: send "!a"

#HotIf