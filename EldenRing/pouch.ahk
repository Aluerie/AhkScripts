f_PouchUp() {
    f_EventActionCombo(g_UpSwitchSorceryIncantation)
}

f_PouchDown() {
    f_EventActionCombo(g_DownSwitchItem)
}

f_PouchLeft() {
    f_EventActionCombo(g_LeftSwitchLeftHandArm)
}

f_PouchRight() {
    f_EventActionCombo(g_RightSwitchRightHandArm)
}

f_PouchFive() {
    f_EscapeKeyPress(1750, 467)
}

f_PouchSix() {
    f_EscapeKeyPress(1850, 467)
}

; Pouch quick Keybinds
r:: f_PouchUp()
c:: f_PouchDown()
v:: f_PouchRight()
Tab:: f_PouchLeft()

; Pouch with Esc
f1:: f_PouchFive()
f2:: f_PouchSix()