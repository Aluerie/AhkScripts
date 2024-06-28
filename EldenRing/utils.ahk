
; === PART 1. TWO HAND ===

two_hand_left() {
    event_action_combo(GUARD_LH)
}

two_hand_right() {
    event_action_combo(ATTACK_RH_2H)
}

; === PART 2. POUCH ===

pouch_up() {
    event_action_combo(UP_SWITCH_SORCERY_INCANTATION)
}

pouch_down() {
    event_action_combo(DOWN_SWITCH_ITEM)
}

pouch_left() {
    event_action_combo(LEFT_SWITCH_LEFT_HAND_ARM)
}

pouch_right() {
    event_action_combo(RIGHT_SWITCH_RIGHT_HAND_ARM)
}

; === PART 3. POUCH FROM ESC SCREEN ===

pouch_five() {
    ; double e only cause it can glitch
    press_sequence(["escape", "right", "down", "down", "e", "e", "escape"])
}

pouch_six() {
    press_sequence(["escape", "left", "down", "down", "e", "e", "escape"])
}

; === PART 4. GESTURES ===

gesture_1() {
    press_sequence(["escape", "up", "right", "up", "up", "e", "escape"])
}

gesture_2() {
    press_sequence(["escape", "up", "left", "up", "up", "e", "escape"])
}

gesture_3() {
    press_sequence(["escape", "up", "right", "up", "e", "escape"])
}

gesture_4() {
    press_sequence(["escape", "up", "left", "up", "e", "escape"])
}

gesture_5() {
    press_sequence(["escape", "up", "right", "e", "escape"])
}

gesture_6() {
    press_sequence(["escape", "up", "left", "e", "escape"])
}

; === PART 5. Annoying QoL Utilities ===

deal_with_notification() {
    Send "{left down}"
    Sleep TIME_BETWEEN_KEYS
    Send "{e down}"
    Sleep TIME_BETWEEN_KEYS
    Send "{e up}{left up}"
}

quit_out() {
    BlockInput true
    press_sequence(["escape", "up", "e"], 50)
    Sleep 110
    press_sequence(["z", "e", "left", "e", "e", "e"], 50)
    BlockInput false
}