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
r:: f_PouchUp()        ; heal
c:: f_PouchDown()      ; mana
v:: f_PouchRight()     ; physick 
Tab:: f_PouchLeft()    ; torrent

; Pouch with Esc
f1:: f_PouchFive()     ; lantern
f2:: f_PouchSix()      ; rainbow
