; LEAGUE TERRITORY

#HotIf WinActive("ahk_exe League of Legends.exe")

; WheelUp:: ; we cant have WheelUp set up because league zooms in with it anyway

WheelDown:: {
    send "{F3}"
}

SC029::f9
LWin::F10
CapsLock::F11
F23::NumpadMult
F20::NumpadSub

<#D:: ComObject("Shell.Application").ToggleDesktop()

#HotIf WinActive("ahk_exe League of Legends.exe") && Getkeystate("CapsLock", "p")
a:: {
    send "!a"
}

#HotIf WinActive("ahk_exe League of Legends.exe") && Getkeystate("LShift", "p")
LWin & S:: Run("ms-screenclip:")

#HotIf WinActive("ahk_exe League of Legends.exe") && Getkeystate("LWin", "p")
LShift & S:: Run("ms-screenclip:")