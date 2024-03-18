
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
    press_sequence(["escape", "right", "down", "down", "e", "escape"])
}

pouch_six() {
    press_sequence(["escape", "left", "down", "down", "e", "escape"])
}

; === PART 4. Annoying PopUP notification ===

deal_with_notification() {
    Send "{left down}"
    Sleep MINIMUM_KEY_PRESS_DURATION
    Send "{e down}"
    Sleep MINIMUM_KEY_PRESS_DURATION
    Send "{e up}{left up}"
}

; === PART 5. GESTURES ===

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