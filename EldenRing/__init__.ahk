/*
ELDEN RING

*/

#HotIf WinActive("ahk_exe eldenring.exe")

; global variables or const
KEY_PRESS_DURATION := 30
TIME_BETWEEN_KEYS := 23

; imports
#Include %A_ScriptDir%\EldenRing\_base.ahk
#Include %A_ScriptDir%\EldenRing\utils.ahk
#Include %A_ScriptDir%\EldenRing\keys.ahk

#HotIf