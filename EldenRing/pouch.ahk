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

; Pouch Keybinds
c:: f_PouchUp()
v:: f_PouchDown()
CapsLock:: f_PouchLeft()
f2:: f_PouchRight()