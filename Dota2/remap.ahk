; Unbindable keys by default
Esc::Numpad7
!SC029::Numpad3 ; Alt + (Grave Accent / Tilde)
CapsLock::Numpad4
LWin::AppsKey

Home::ESC  ; so we have ESC key for showcase, etc.

; NumpadEnter stopped working for me in dota in the same way as normal Enter
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

LWin & S:: {
    if Getkeystate("LShift", "p") {
        Run("ms-screenclip:")
    }
}

LShift & S:: {
    if Getkeystate("LWin", "p") {
        Run("ms-screenclip:")
    }
}