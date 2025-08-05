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
; #include %A_ScriptDir%\debug\__init__.ahk         ; Debug Print for this script

; GAMES
#Include %A_ScriptDir%\games\dota2.ahk              ; Dota 2
#Include %A_ScriptDir%\games\elden_ring.ahk         ; Elden Ring
#include %A_ScriptDir%\games\sekiro.ahk             ; Sekiro
#include %A_ScriptDir%\games\variety.ahk            ; Variety

; WINDOWS
#include %A_ScriptDir%\windows\general.ahk          ; Windows Daily Life
; #include %A_ScriptDir%\windows\zapret.ahk         ; Zapret
