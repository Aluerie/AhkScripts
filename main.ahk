#Requires AutoHotkey v2.0
#SingleInstance Force

KeyHistory 0
ListLines False

; UNCOMMENT THESE 3 lines TO SEE THE KEY HISTORY WINDOW
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
#include %A_ScriptDir%\games\hades.ahk              ; Hades
#include %A_ScriptDir%\games\sekiro.ahk             ; Sekiro

; WINDOWS
#include %A_ScriptDir%\windows\general.ahk          ; Windows Daily Life
#include %A_ScriptDir%\windows\zapret.ahk           ; Zapret