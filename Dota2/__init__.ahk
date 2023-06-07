/*
Dota 2

-
-
*/

#HotIf WinActive("ahk_exe dota2.exe")

; no longer needed
; #Include %A_ScriptDir%\Dota2\allies.ahk

; remap should be the last bcs it has #HotIf in it
#Include %A_ScriptDir%\Dota2\remap.ahk

#HotIf