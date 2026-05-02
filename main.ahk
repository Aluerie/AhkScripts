#Requires AutoHotkey v2.0
#SingleInstance Force

; COMMENT FIRST 2 AND UNCOMMENT OTHER 3 lines TO SEE THE KEY HISTORY WINDOW
KeyHistory 0
ListLines False
; KeyHistory
; KeyHistory 400
; InstallMouseHook  ; need for mouse events

ProcessSetPriority "AboveNormal"  ; "Realtime"
SendMode "InputThenPlay"

; DEBUG PRINTS
; #include %A_ScriptDir%\src\debug\__init__.ahk

; GAMES
#Include %A_ScriptDir%\src\games\dota2.ahk
#Include %A_ScriptDir%\src\games\elden_ring.ahk
#include %A_ScriptDir%\src\games\sekiro.ahk
#include %A_ScriptDir%\src\games\variety.ahk

; WINDOWS
#include %A_ScriptDir%\src\windows\general.ahk
