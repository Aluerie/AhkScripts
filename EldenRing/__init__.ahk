/*
ELDEN RING

*/

#HotIf WinActive("ahk_exe eldenring.exe")

; global variables or const
MINIMUM_KEY_PRESS_DURATION := 25

; imports
#Include %A_ScriptDir%\EldenRing\_base.ahk
#Include %A_ScriptDir%\EldenRing\utils.ahk
#Include %A_ScriptDir%\EldenRing\keys.ahk

#HotIf