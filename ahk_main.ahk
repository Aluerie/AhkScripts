;---- Adapting some nomenclature for the subroutines, functions, global variables, variables.
;---- G_ 	Global Variable
;---- V_ 	Variable
;---- S_  	Subroutine
;---- F_ 	function
;---- C_    class

#SingleInstance Force
#Warn
; #NoTrayIcon

A_HotkeyInterval := 2000  ; This is the default value (milliseconds).
A_MaxHotkeysPerInterval := 200

ProcessSetPriority "A" 		; sets a higher priority affinity to help reduce input latency
SetControlDelay 0			; 0 is the recommmended lowest setting  https://www.autohotkey.com/docs/commands/SetControlDelay.htm
SendMode "InputThenPlay"

SetDefaultMouseSpeed 0

#include %A_ScriptDir%\Dota2\dota2.ahk
#include %A_ScriptDir%\EldenRing\_init.ahk