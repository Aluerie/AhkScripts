;---- Adapting some nomenclature for the subroutines, functions, global variables, variables.
;---- g_ 	Global Variable
;---- v_ 	Variable
;---- s_  	Subroutine
;---- f_ 	function
;---- c_    class
/*
# - Windows
! - Alt
^ - Ctrl
+ - Shift

For more,
* Hotkeys - https://www.autohotkey.com/docs/v2/Hotkeys.htm
* KeyList - https://www.autohotkey.com/docs/v2/KeyList.htm


ADVICE:

One of the biggest problems I ever faced:
Q::ESC - it will only work for Shift+Q bcs it's a big Q
correct way:
q::ESC

*/
KeyHistory 0
ListLines False

; DEBUG
;
; UNCOMMENT THESE 3 lines TO SEE THE KEY HISTORY WINDOW
; KeyHistory
; KeyHistory 400
; InstallMouseHook  ; need for mouse events
#SingleInstance Force
; #NoTrayIcon

; Allows a maximum of 200 hotkeys to be pressed within 2000 ms without triggering a warning dialog.
A_HotkeyInterval := 2000    ; This is the default value (milliseconds).
A_MaxHotkeysPerInterval := 200

ProcessSetPriority "AboveNormal"  ; "Realtime"
SendMode "InputThenPlay"

; DEBUG
; #include %A_ScriptDir%\debug\__init__.ahk           ; Debug Print for this script

; COGS
#include %A_ScriptDir%\Windows\general.ahk          ; Windows Daily Life
#include %A_ScriptDir%\Dota2\__init__.ahk           ; Dota 2
#include %A_ScriptDir%\EldenRing\__init__.ahk       ; Elden Ring
#include %A_ScriptDir%\Sekiro\sekiro.ahk            ; Sekiro
#include %A_ScriptDir%\Hades\hades.ahk              ; Hades
