; SECTION 1. MY PREFERENCES

KEY_PRESS_DURATION := 30
TIME_BETWEEN_KEYS := 23

;  - Elden Ring In-game Key Bindings.
; Note: up/down/left/right correlate to HUD position and default "e"+press settings.
UP_SWITCH_SORCERY_INCANTATION := "3"
DOWN_SWITCH_ITEM := "4"
LEFT_SWITCH_LEFT_HAND_ARM := "z"
RIGHT_SWITCH_RIGHT_HAND_ARM := "x"

; Elden Ring In-game Key Bindings: Attack section
ATTACK_RH_2H := "LButton"
GUARD_LH := "RButton"
EVENT_ACTION := "e"

; SECTION 2. BASE FUNCTIONS

event_action_combo(secondary_key) {
    /* Press `EVENT_ACTION + secondary_key` combo.
    
    Used in Elden Ring for "EVENT_ACTION + something" keybinds like Pouch keys.
    */
    if (!Getkeystate(EVENT_ACTION))
        Send "{" EVENT_ACTION " down}"
    press_key(secondary_key, 50)
    Send "{" EVENT_ACTION " up}"
}

press_key(key, duration := 0) {
    /* Holds down a key for a specified duration or KEY_PRESS_DURATION before releasing it.
    
    It seems Elden Ring and some other games do not recognize normal ways of sending a key, i.e. simply `Send`.
    But separate `key down` and `key up` events do work.
    */
    Send "{" key " down}"
    Sleep duration ? duration : KEY_PRESS_DURATION
    Send "{" key " up}"
}

press_sequence(sequence, time_between_presses := 0) {
    /* Press sequence of keys.
    
    */
    for index, value in sequence {
        press_key(value)
        Sleep time_between_presses ? time_between_presses : TIME_BETWEEN_KEYS
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

open_equipment() {
    press_sequence(["escape", "e"])
}

pause_trick() {
    press_sequence(["escape", "e", "2", "down", "e"])
}

; SECTION 4. REMAPPING

#HotIf WinActive("ahk_exe eldenring.exe")
; Reminder / Warning
; we need "~" before LAlt, Tab hotkey binds in order for AltTab to work properly
; we need "~" before 2 so ER doesn't complain about overwriting menu keys

~LAlt::f                ; Crouch
CapsLock::r             ; Jump

SC029::ESC              ; Extra key for Menu
1:: open_equipment()     ; Extra key for Equipment
f::e                    ; I want menu interact keys to be F as well
e::Left                 ; So we have an easy way to dismiss notifications like "Summon Torrent with Flask?" => "E F"

t::F5                   ; So we can bind it in the practice tool without losing access to "T: Sort"
f5::t                   ; New key to "T: Sort" menu feature

r:: pouch_up()          ; heal
c:: pouch_down()        ; mana
v:: pouch_right()       ; physick
~Tab:: pouch_left()     ; torrent

XButton1:: two_hand_left()
XButton2:: two_hand_right()

~2::Up                  ; Extra key for Up (useful for quit out)
~3::Down                ; Extra key for Down
~4::Right               ; Extra key for Right

; TODO: REMOVE THIS AS IT DISABLES LWIN::APPSKEY IN DOTA 2 !!!
<#Tab::AltTab           ; Give an alternative way to AltTab

ESC:: pouch_five()

o:: gesture_1()
p:: gesture_2()
k:: gesture_3()
l:: gesture_4()
m:: gesture_5()
,:: gesture_6()

f4:: pause_trick()

#HotIf