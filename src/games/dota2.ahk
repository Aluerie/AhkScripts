#HotIf WinActive("ahk_exe dota2.exe")

; NON-BINDABLE KEYS BY DEFAULT
Esc::Numpad7
!SC029::Numpad8                 ; Alt + (Grave Accent / Tilde)

; FIX MINOR ISSUES
~NumpadDiv::ESC                     ; so we have ESC key for showcase, etc.
NumpadEnter::Enter              ; Allow `NumpadEnter` to be used in the same scenarios as normal `Enter`
LWin::AppsKey

global StartTime := 0

WheelUp:: {
    /*
    I want to use Taunt on WheelUp but Dota spams me with cooldown messages
    So let's do some rate limiting
    */
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