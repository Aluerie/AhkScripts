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

; SECTION 4. FIX FOR SCREENSHOT
; "Ctrl + Shift + S" instead of "Win + Shift + S" because there are some memes with`LWin` combos when we do `LWin::AppsKey`
^+s:: Run("ms-screenclip:")

#HotIf