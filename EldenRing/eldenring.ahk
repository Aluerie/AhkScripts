V_EVENT_ACTION = e
UP_SORCERY_INCANTATON = 3
DOWN_SWICH_ITEM = 4 
LEFT_LEFT_HAND_ARM = 2
RIGHT_RIGHT_HAND_ARM = 1



; ELDEN RING TERRITORY 
#IfWinActive ahk_exe `eldenring.exe

LWin::o

C:: 
   	SendInput {%V_EVENT_ACTION% down}
   	sleep 25
   	SendInput {3 down}
   	sleep 25
   	SendInput {3 up}
   	sleep 25
   	SendInput {%V_EVENT_ACTION% up}
return

V:: 
Send, {e down}{4 down}
sleep 5
Send, {e up}{4 up}
return

CapsLock:: 
Send, {e down}{2 down}
sleep 5
Send, {e up}{2 up}
return

numpadsub:: 
Send, {e down}{1 down}
sleep 5
Send, {e up}{1 up}
return

#If