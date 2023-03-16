/*
ELDEN RING

-
-
*/

#HotIf WinActive("ahk_exe eldenring.exe")

; keys from settings
; REMEMBER TO CHANGE THOSE IF YOU CHANGE THE GAME SETTINGS !!!
g_EventAction := "e"
g_UpSwitchSorceryIncantation := "f"
g_DownSwitchItem := "3"
g_LeftSwitchLeftHandArm := "z"
g_RightSwitchRightHandArm := "x"
g_Attack_RH_2H := "LButton"
g_Guard_LH := "RButton"

#Include %A_ScriptDir%\EldenRing\_base.ahk
#Include %A_ScriptDir%\EldenRing\pouch.ahk
; #Include %A_ScriptDir%\EldenRing\spells.ahk ; idk i can't get it absolutely right
#Include %A_ScriptDir%\EldenRing\twohand.ahk
#Include %A_ScriptDir%\EldenRing\remap.ahk

#HotIf