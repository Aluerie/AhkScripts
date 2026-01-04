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

; DEBUG
; #include %A_ScriptDir%\src\debug\__init__.ahk         ; Debug Print for this script

; GAMES
#Include %A_ScriptDir%\src\games\dota2.ahk              ; Dota 2
#Include %A_ScriptDir%\src\games\elden_ring.ahk         ; Elden Ring
#include %A_ScriptDir%\src\games\sekiro.ahk             ; Sekiro
#include %A_ScriptDir%\src\games\variety.ahk            ; Variety

; WINDOWS
#include %A_ScriptDir%\src\windows\general.ahk          ; Windows Daily Life
; #include %A_ScriptDir%\src\windows\zapret.ahk         ; Zapret
