; # SECTION 1. REMAP
/*
Note that my mouse button #6 (the sniper one) is currently bound to `End`
*/

; Having LWin on both sides is better.
AppsKey::LWin

; Why CapsLock exists in 2026 is a mystery to me.
; And why that key has some unholy restrictions around it.
; Better change it to a normal key.
CapsLock::Home

; The Native Win+Tab feature about Virtual Desktops Management is kinda crap.
; Just give me another Alt+Tab :D
; However doing this blocks us from overwriting LWin in games like `LWin::F8` stops working - so don't uncomment this.
; <#Tab::AltTab

#HotIf WinActive("ahk_exe vlc.exe")

End::Space

#HotIf