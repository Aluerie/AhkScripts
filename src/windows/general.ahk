AppsKey::LWin
CapsLock::Home

; my mouse keys
; #TODO: when we stop needing Silksong and Elden Ring quirks -
; reset them back to End, Mouse 4 and Mouse 5 in the Steel series app
Ins::XButton1  ; Mouse 4
ScrollLock::XButton2  ; Mouse 5
f17::End  ; Mouse 6

; The Native Win+Tab feature about Virtual Desktops Management is kinda crap.
; Just give me another Alt+Tab :D
; However doing this blocks us from overwriting LWin in games like `LWin::F8` stops working - so don't uncomment this.
; <#Tab::AltTab

; TODO: REMOVE THIS AS IT DISABLES LWIN::KEY BINDS
<#Tab::AltTab

#HotIf WinActive("ahk_exe mpc-hc64.exe")

f17::Space

#HotIf WinActive("ahk_exe vlc.exe")

f17::Space

#HotIf