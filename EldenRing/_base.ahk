f_EventActionCombo(secondary_key) {
    Send "{" g_EventAction " down}"
    sleep 25
    Send "{" secondary_key " down}"
    sleep 25
    Send "{" secondary_key " up}"
    sleep 25
    Send "{" g_EventAction " up}"
}

f_EscapeKeyPress(x, y) {
    Send "{Escape down}"
    sleep 300 ;300
    MouseClick("Left", x, y, , 20)
    sleep 25 ; 25
    Send "{LButton down}"
    sleep 100 ; 100
    Send "{LButton up}"
    sleep 20 ; 20 
    Send "{Escape up}"
    sleep 100 ; 20
    Send "{Escape down}"
    sleep 25 ; 25
    Send "{Escape up}"
}