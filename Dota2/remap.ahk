F6::Esc

LWin::F6

; Alt + (Grave Accent / Tilda)
!SC029::F8

; >< key
SC056::F9

Esc::F10

CapsLock::F11

; Since we rebind LWin above --- Win + Key keybinds won't work by default
; meaning we need to bring them back - maybe there is a better way but here is mine
; since i only use `Win Shift S` in dota then let's bring only it. 

#HotIf WinActive("ahk_exe dota2.exe") && Getkeystate("LShift", "p")
LWin & S:: Run("ms-screenclip:")

#HotIf WinActive("ahk_exe dota2.exe") && Getkeystate("LWin", "p")
LShift & S:: Run("ms-screenclip:")