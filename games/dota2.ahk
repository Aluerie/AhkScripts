/* Dota 2

Features
--------
# TODO: Write features

*/

#HotIf WinActive("ahk_exe dota2.exe")

; NON-BINDABLE KEYS BY DEFAULT
Esc::Numpad7
!SC029::Numpad8                 ; Alt + (Grave Accent / Tilde)

; FIX FOR MINOR ISSUES 
Insert::ESC                     ; so we have ESC key for showcase, etc.
NumpadEnter::Enter              ; For some reason it doesn't work in the same manner as normal Enter sometimes
AppsKey::AppsKey                ; "real LWin"::AppsKey, it has to be repeated so Windows/general.ahk doesn't eat it.
LWin::AppsKey

; TAUNT CD PROBLEM
; I want to use Taunt on WheelUp but Dota spams me with cooldown messages
; So let's do some rate limiting
global StartTime := 0

WheelUp:: {
    global StartTime
    if (A_TickCount - StartTime > 2000) {
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
    else {
        Send "{LWin} & {S}"
    }
}

LShift & S:: {
    if Getkeystate("AppsKey", "p") {
        Run("ms-screenclip:")
    }
    else {
        Send "{LShift} & {S}"
    }
}

#HotIf