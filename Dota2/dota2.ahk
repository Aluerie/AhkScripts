#HotIf WinActive("ahk_exe dota2.exe")

F6::Esc
LWin::F6
; Alt + (Grave Accent / Tilda)
!SC029::F8
; >< key
SC056::F9

Esc::F10
CapsLock::F11

!1::  ; Better "Select Ally 1" keybind (it centers the cam on them)
{
    send "!1"
    sleep 10
    send "!1"
}

!2::
{
    send "!2"
    sleep 10
    send "!2"
}

!3::
{
    send "!3"
    sleep 10
    send "!3"
}

!4::
{
    send "!4"
    sleep 10
    send "!4"
}

!5::
{
    send "!5"
    sleep 10
    send "!5"
}

; FOR SCREENSHOTS

#HotIf WinActive("ahk_exe dota2.exe") && Getkeystate("LShift", "p")
LWin & S:: Run("ms-screenclip:")

#HotIf WinActive("ahk_exe dota2.exe") && Getkeystate("LWin", "p")
LShift & S:: Run("ms-screenclip:")

#HotIf