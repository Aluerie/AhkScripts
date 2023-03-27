f_EventActionCombo(secondary_key) {
    Send "{" g_EventAction " down} {" secondary_key " down}"
    sleep 25
    Send "{" secondary_key " up} {" g_EventAction " up}"
}

f_EscapeKeyPress(x, y) {
    Send "{Escape down}"
    sleep 200 ;300
    MouseMove(x, y)
    sleep 25 ; 25
    Send "{LButton down}"
    sleep 75 ; 100
    Send "{LButton up}"
    sleep 20 ; 20
    Send "{Escape up}"
    sleep 100 ; 20
    Send "{Escape down}"
    sleep 25 ; 25
    Send "{Escape up}"
}