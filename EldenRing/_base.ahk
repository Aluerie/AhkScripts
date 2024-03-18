event_action_combo(secondary_key) {
    Send "{e down}{" secondary_key " down}"
    Sleep MINIMUM_KEY_PRESS_DURATION
    Send "{" secondary_key " up}{e up}"
}

press_key(key, duration := 0) {
    ; Holds down a key for a specified duration or g_MinimumKeyPressDuration before releasing it
    duration := duration ? duration : MINIMUM_KEY_PRESS_DURATION
    Send "{" key " down}"
    Sleep duration
    Send "{" key " up}"
}

press_sequence(sequence) {
    ; Press sequence of keys
    For index, value in sequence {
        press_key(value)
        Sleep MINIMUM_KEY_PRESS_DURATION
    }
}