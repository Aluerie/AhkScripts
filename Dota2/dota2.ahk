
#IfWinActive ahk_exe dota2.exe

!SC029::F8  ; Tilda
F6::Esc

LWin::F6
SC056::F9  ; >< key
Esc::F10
CapsLock::F11

NumpadAdd::
send {Enter}
Sleep, 10
SendInput, ^v
Sleep,  990
send {Esc}
return

; FOR SELECT ALLIES THING

!1::
send !1
sleep 10
send !1
return

!2::
send !2
sleep 10
send !2
return

!3::
send !3
sleep 10
send !3
return

!4::
send !4
sleep 10
send !4
return

!5::
send !5
sleep 10
send !5
return

; FOR SCREENSHOTS

#If WinActive("ahk_exe dota2.exe") && Getkeystate("LShift","p")
LWin & S::Run, ms-screenclip:

#If WinActive("ahk_exe dota2.exe") && Getkeystate("LWin","p")
LShift & S::Run, ms-screenclip:

#If