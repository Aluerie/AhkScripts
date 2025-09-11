/* Dota 2

Features
--------
# TODO: Write features

*/

#HotIf WinActive("ahk_exe dota2.exe")

; SECTION 1. NON-BINDABLE KEYS BY DEFAULT
Esc::Numpad7
!SC029::Numpad8                 ; Alt + (Grave Accent / Tilde)

; SECTION 2. FIX FOR MINOR ISSUES
Insert::ESC                     ; so we have ESC key for showcase, etc.
NumpadEnter::Enter              ; For some reason it doesn't work in the same manner as normal Enter sometimes
LWin::AppsKey  ; SC15B::AppsKey

; SECTION 3. TAUNT CD PROBLEM
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

; SECTION 4. FIX FOR WIN + SHIFT + S KEY COMBINATION
; Since we rebind LWin above --- Win + Key keybinds won't work by default
; meaning we need to bring them back - maybe there is a better way but here is mine
; since i only use `Win Shift S` in dota then let's bring only it.

AppsKey & S:: {
    if Getkeystate("LShift", "p") {
        Run("ms-screenclip:")
    }
    else {
        Send "{AppsKey} & {S}"
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

; SECTION 4. FOR AFK AFK IN SILT-BREAKER
; PgUp:: {
;     while (!GetKeyState("LButton")) {
;         MouseMove 1180 + Random(0, 200), 620 + Random(0, 200)
;         Send "{RButton}"
;         Send "{End}"
;         Sleep 4000
;         Send "{F1}"
;         Sleep 4000
;         Send "{Space}"
;         Sleep 4000
;     }
; }

#HotIf