;---- Adapting some nomenclature for the subroutines, functions, global variables, variables.
;---- g_ 	Global Variable
;---- v_ 	Variable
;---- s_  	Subroutine
;---- f_ 	function
;---- c_    class

#SingleInstance Force
#Warn
; #NoTrayIcon

A_HotkeyInterval := 2000  ; This is the default value (milliseconds).
A_MaxHotkeysPerInterval := 200

ProcessSetPriority "A" 		; sets a higher priority affinity to help reduce input latency
SetControlDelay 0			; 0 is the recommended lowest setting  https://www.autohotkey.com/docs/commands/SetControlDelay.htm
SendMode "InputThenPlay"

SetDefaultMouseSpeed 0

; #include %A_ScriptDir%\debug\__init__.ahk
#include %A_ScriptDir%\Dota2\__init__.ahk

; Elden Ring
; #include %A_ScriptDir%\EldenRing\__init__.ahk

; League of Legends
#include %A_ScriptDir%\LeagueOfLegends\__init__.ahk