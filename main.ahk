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
*/
#Requires AutoHotkey v2.0
#SingleInstance Force
#Warn
; #NoTrayIcon

; KeyHistory ; UNCOMMENT THESE 3 lines TO SEE THE KEY HISTORY WINDOW
; KeyHistory 400
; InstallMouseHook

A_HotkeyInterval := 2000    ; This is the default value (milliseconds).
A_MaxHotkeysPerInterval := 200

ProcessSetPriority "Realtime" 	    ; sets a higher priority affinity to help reduce input latency
SetControlDelay 0		    ; 0 is the recommended lowest setting  https://www.autohotkey.com/docs/commands/SetControlDelay.htm
SendMode "InputThenPlay"

SetDefaultMouseSpeed 0

; DEBUG
; #include %A_ScriptDir%\debug\__init__.ahk           ; Debug Print for this script

; COGS
#include %A_ScriptDir%\Windows\general.ahk          ; Windows Daily Life
#include %A_ScriptDir%\Dota2\__init__.ahk           ; Dota 2
#include %A_ScriptDir%\EldenRing\__init__.ahk       ; Elden Ring
#include %A_ScriptDir%\Sekiro\sekiro.ahk            ; Sekiro
#include %A_ScriptDir%\Hades\hades.ahk              ; Hades
