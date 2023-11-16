; LEAGUE TERRITORY

#HotIf WinActive("ahk_exe League of Legends.exe")

CapsLock::Numpad4

; Win + D accidents
<#D:: ComObject("Shell.Application").ToggleDesktop()

; Fix for league fake Target Champions Only interaction with AttackMove
#HotIf WinActive("ahk_exe League of Legends.exe") && Getkeystate("Tab", "p")
a:: send "!a"

#HotIf WinActive("ahk_exe League of Legends.exe") && Getkeystate("LShift", "p")
LWin & S:: Run("ms-screenclip:")

#HotIf WinActive("ahk_exe League of Legends.exe") && Getkeystate("LWin", "p")
LShift & S:: Run("ms-screenclip:")


#HotIf