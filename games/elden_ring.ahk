/* Elden Ring

Features
--------
# TODO: Write features

*/

; SECTION 1. MY PREFERENCES 

KEY_PRESS_DURATION := 30
TIME_BETWEEN_KEYS := 23

; Switch Armament - Settings.
; Note. up/down/left/right correlate to HUD position and default "e"+press settings.
UP_SWITCH_SORCERY_INCANTATION := "Down"
DOWN_SWITCH_ITEM := "Left"
LEFT_SWITCH_LEFT_HAND_ARM := "z"
RIGHT_SWITCH_RIGHT_HAND_ARM := "x"

; Attack - Settings
ATTACK_RH_2H := "LButton"
GUARD_LH := "RButton"

; Note. A lot of functions below depend on Event Action key being "e"
; But we don't write it because we probably won't ever change it. It's just a bit easier.
; EVENT_ACTION := "e"

; SECTION 2. BASE FUNCTIONS

event_action_combo(secondary_key) {
    /* Press `e + secondary_key` combo.
    
    Used in Elden Ring for "e + something" keybinds like Pouch keys.
    */
    if (!Getkeystate("e"))
        Send "{e down}"
    press_key(secondary_key, 50)
    Send "{e up}"
}

press_key(key, duration := 0) {
    /* Holds down a key for a specified duration or KEY_PRESS_DURATION before releasing it */
    duration := duration ? duration : KEY_PRESS_DURATION
    Send "{" key " down}"
    Sleep duration
    Send "{" key " up}"
}

press_sequence(sequence, time_between_presses := 0) {
    /* Press sequence of keys */
    time_between_presses := time_between_presses ? time_between_presses : TIME_BETWEEN_KEYS
    For index, value in sequence {
        press_key(value)
        Sleep time_between_presses
    }
}

; SECTION 3. UTILITY FUNCTIONS

two_hand_left() {
    event_action_combo(GUARD_LH)
}

two_hand_right() {
    event_action_combo(ATTACK_RH_2H)
}

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

pouch_five() {
    ; double e only cause it can glitch
    press_sequence(["escape", "right", "down", "down", "e", "e", "escape"])
}

pouch_six() {
    press_sequence(["escape", "left", "down", "down", "e", "e", "escape"])
}

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

; SECTION 4. REMAPPING

#HotIf WinActive("ahk_exe eldenring.exe")

; ESC::9
CapsLock::r
LShift::f

1::ESC
2::Up
3::Down

f::Left
g::Right

r:: pouch_up()        ; heal
c:: pouch_down()      ; mana
v:: pouch_right()     ; physick
Tab:: pouch_left()    ; torrent

; f1:: pouch_five()     ; lantern
; f2:: pouch_six()      ; rainbow

; UNUSED
; 1:: two_hand_left()
; 2:: two_hand_right()

; f3:: gesture_6()
; f4:: gesture_2()
; f5:: gesture_3()
; f6:: gesture_4()
; f7:: gesture_5()
; f8:: gesture_6()

; AppsKey:: deal_with_notification()
; n:: quit_out()

; bring back lost c and v
; <::c
; >::v

; QUIT OUT SEQUENCE

; 3::e
; 4::z
; 5::e
; 6::Left
; 7::e
; 8::e

; SC029::Down

#HotIf