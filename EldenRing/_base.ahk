event_action_combo(secondary_key) {
    ; Press `e + secondary_key` combo.
    ; Used in Elden Ring for "e + something" keybinds like Pouch keys.
    if (!Getkeystate("e"))
        Send "{e down}"
    press_key(secondary_key, 50)
    Send "{e up}"
}

press_key(key, duration := 0) {
    ; Holds down a key for a specified duration or KEY_PRESS_DURATION before releasing it
    duration := duration ? duration : KEY_PRESS_DURATION
    Send "{" key " down}"
    Sleep duration
    Send "{" key " up}"
}

press_sequence(sequence, time_between_presses := 0) {
    ; Press sequence of keys
    time_between_presses := time_between_presses ? time_between_presses : TIME_BETWEEN_KEYS
    For index, value in sequence {
        press_key(value)
        Sleep time_between_presses
    }
}