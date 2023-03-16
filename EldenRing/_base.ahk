f_EventActionCombo(secondary_key) {
    Send "{" g_EventAction " down}"
    sleep 25
    Send "{" secondary_key " down}"
    sleep 25
    Send "{" secondary_key " up}"
    sleep 25
    Send "{" g_EventAction " up}"
}