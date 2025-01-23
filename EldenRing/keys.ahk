; === PART 1. KEYS FROM SETTINGS ===

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
; but we don't write it (because we probably won't ever change it).
; EVENT_ACTION := "e"

; === PART 2. REMAP SOME KEYS WITHOUT ANY EXTRA MAGIC ===
CapsLock::r
Shift::f

2::Up
3::Down

f::Left
g::Right

1::ESC


; === PART 3. AHK UTILITIES FOR BETTER QOL ===

; Two Hand Keybinds
; 1:: two_hand_left()
; 2:: two_hand_right()

; Pouch KeyBinds
r:: pouch_up()        ; heal
c:: pouch_down()      ; mana
v:: pouch_right()     ; physick
Tab:: pouch_left()    ; torrent

; Pouch from ESC Screen
f1:: pouch_five()     ; lantern
f2:: pouch_six()      ; rainbow

; Gestures
f3:: gesture_6()

; f4:: gesture_2()
; f5:: gesture_3()
; f6:: gesture_4()
; f7:: gesture_5()
; f8:: gesture_6()

; Random context menus like Summon Torrent YES NO
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