; Win + ESC
Esc::Numpad7
Home::ESC

LWin::AppsKey
CapsLock::Numpad4

!SC029::Numpad3 ; Alt + (Grave Accent / Tilde)

; NumpadEnter stopped working for me in dota in the same way as normal Enter xd
NumpadEnter::Enter

; I want to use Taunt on WheelUp but Dota spams me with cooldown messages 
; So let's do it my rate limiting way
global StartTime := 0

WheelUp:: {
    global StartTime
    if (A_TickCount - StartTime  > 2000) {
        StartTime := A_TickCount
        Send "{PgUp}"
        Send "{WheelUp}"
    }
    else
        Send "{WheelUp}"
}

; Since we rebind LWin above --- Win + Key keybinds won't work by default
; meaning we need to bring them back - maybe there is a better way but here is mine
; since i only use `Win Shift S` in dota then let's bring only it.

#HotIf WinActive("ahk_exe dota2.exe") && Getkeystate("LShift", "p")
LWin & S:: Run("ms-screenclip:")

#HotIf WinActive("ahk_exe dota2.exe") && Getkeystate("LWin", "p")
LShift & S:: Run("ms-screenclip:")