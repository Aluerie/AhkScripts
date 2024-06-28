event_action_combo(secondary_key) {
    if (!Getkeystate("e"))
        Send "{e down}"
    press_key(secondary_key, 50)
    Send "{e up}"
}

press_key(key, duration := 0) {
    ; Holds down a key for a specified duration or g_MinimumKeyPressDuration before releasing it
    duration := duration ? duration : KEY_PRESS_DURATION
    Send "{" key " down}"
    Sleep duration
    Send "{" key " up}"
}

press_sequence(sequence, duration := 0) {
    ; Press sequence of keys
    duration := duration ? duration : TIME_BETWEEN_KEYS
    For index, value in sequence {
        press_key(value)
        Sleep duration
    }
}