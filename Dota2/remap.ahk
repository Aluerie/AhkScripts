/*
# - Windows
! - Alt
^ - Ctrl
+ Shift

For more,
    * Hotkeys
    https://www.autohotkey.com/docs/v2/Hotkeys.htm
    * KeyList
    https://www.autohotkey.com/docs/v2/KeyList.htm
*/

CapsLock::F13
LWin::F14
; Alt + (Grave Accent / Tilde)
SC029::AppsKey
^LWin::NumpadAdd
+LWin::F17
; LAlt::NumpadSub

; idk why but NumpadEnter stopped working for me in dota in the same way as normal Enter
NumpadEnter::Enter

; Since we rebind LWin above --- Win + Key keybinds won't work by default
; meaning we need to bring them back - maybe there is a better way but here is mine
; since i only use `Win Shift S` in dota then let's bring only it.

#HotIf WinActive("ahk_exe dota2.exe") && Getkeystate("LShift", "p")
LWin & S:: Run("ms-screenclip:")

#HotIf WinActive("ahk_exe dota2.exe") && Getkeystate("LWin", "p")
LShift & S:: Run("ms-screenclip:")