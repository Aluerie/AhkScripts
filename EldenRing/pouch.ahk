f_PouchUp() {
    f_PouchBase(g_UpSwitchSorceryIncantation)
}

f_PouchDown() {
    f_PouchBase(g_DownSwitchItem)
}

f_PouchLeft() {
    f_PouchBase(g_LeftSwitchLeftHandArm)
}

f_PouchRight() {
    f_PouchBase(g_RightSwitchRightHandArm)
}

f_PouchBase(direction_key) {
    Send "{" g_EventAction " down}"
    sleep 25
    Send "{" direction_key " down}"
    sleep 25
    Send "{" direction_key " up}"
    sleep 25
    Send "{" g_EventAction " up}"
}