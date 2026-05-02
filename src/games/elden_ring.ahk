; SECTION 1. MY PREFERENCES

; Elden Ring In-game Key Bindings.
PouchUp_SwitchSorceryIncantation := "4"
PouchDown_SwitchItem := "8"
PouchLeft_SwitchLeftHandArm := "Up"
PouchRight_SwitchRightHandArm := "x"

AttackRightHandTwoHand := "LButton"
GuardLeftHand := "RButton"
EventAction := "e"

MapButton := "3"

; SECTION 2. BASE FUNCTIONS

EventActionCombo(SecondaryKey) {
    /* Press `EVENT_ACTION + secondary_key` combo.
    
    Used in Elden Ring for "EVENT_ACTION + something" keybinds like Pouch keys.
    */
    if (!Getkeystate(EventAction))
        Send "{" EventAction " down}"
    PressKey(SecondaryKey, 50)
    Send "{" EventAction " up}"
}

PressKey(Key, Duration := 0) {
    /* Holds down a key for a specified duration before releasing it.
    
    It seems Elden Ring and some other games do not recognize normal ways of sending a key, i.e. simply `Send`.
    But separate `key down` and `key up` events do work.
    */
    Send "{" Key " down}"
    Sleep Duration ? Duration : 30
    Send "{" Key " up}"
}

PressSequence(sequence, time_between_presses := 0) {
    /* Press sequence of keys.
    
    */
    for index, value in sequence {
        PressKey(value)
        Sleep time_between_presses ? time_between_presses : 23
    }
}

; SECTION 3. UTILITY FUNCTIONS

TwoHandLeft() {
    EventActionCombo(GuardLeftHand)
}

TwoHandRight() {
    EventActionCombo(AttackRightHandTwoHand)
}

PouchUp() {
    EventActionCombo(PouchUp_SwitchSorceryIncantation)
}

PouchDown() {
    EventActionCombo(PouchDown_SwitchItem)
}

PouchLeft() {
    EventActionCombo(PouchLeft_SwitchLeftHandArm)
}

PouchRight() {
    EventActionCombo(PouchRight_SwitchRightHandArm)
}

PouchFive() {
    ; double e only cause it can glitch
    PressSequence(["escape", "right", "down", "down", "e", "e", "escape"])
}

PouchSix() {
    PressSequence(["escape", "left", "down", "down", "e", "e", "escape"])
}

Gesture1() {
    PressSequence(["escape", "up", "right", "up", "up", "e", "escape"])
}

Gesture2() {
    PressSequence(["escape", "up", "left", "up", "up", "e", "escape"])
}

Gesture3() {
    PressSequence(["escape", "up", "right", "up", "e", "escape"])
}

Gesture4() {
    PressSequence(["escape", "up", "left", "up", "e", "escape"])
}

Gesture5() {
    PressSequence(["escape", "up", "right", "e", "escape"])
}

Gesture6() {
    PressSequence(["escape", "up", "left", "e", "escape"])
}

QuitOut() {
    BlockInput true
    PressSequence(["escape", "up", "e"], 50)
    Sleep 110
    PressSequence(["z", "e", "left", "e", "e", "e", "e"], 50)
    BlockInput false
}

OpenEquipment() {
    PressSequence(["escape", "e"])
}

OpenCrafting() {
    PressSequence(["escape", "down", "e"])
}

OpenInventory() {
    PressSequence(["escape", "down", "down", "e"])
}

OpenSystem() {
    PressSequence(["escape", "up", "e"])
}

PauseTrick() {
    PressSequence(["escape", "e", MapButton, "down", "e"])
}

; SECTION 4. REMAPPING

#HotIf WinActive("ahk_exe eldenring.exe")

~Alt::f  ; Crouch
CapsLock::r  ; Jump
Shift::z  ; Ash of War + Menu LT
z::Up  ; Rebind so it doesn't get lost
f17::Left  ; Strong Attack + Menu RT
~SC029::y  ; A better key for sort
f::9

1:: OpenEquipment()
2:: OpenInventory()
4:: OpenCrafting()
g:: OpenSystem()

t::F5  ; So we can bind it in the practice tool without losing access to "T: Sort"
f5::t  ; New key to "T: Sort" menu feature

r:: PouchUp()  ; heal
c:: PouchDown()  ; mana
v:: PouchRight()  ; physick
~Tab:: PouchLeft()  ; torrent

Ins:: TwoHandLeft()  ; Mouse 4
ScrollLock:: TwoHandRight()  ; Mouse 5

; ESC:: PouchFive()

; i:: Gesture1()
; o:: Gesture2()
; j:: Gesture3()
; k:: Gesture4()
; n:: Gesture5()
; m:: Gesture6()

f4:: PauseTrick()
; o:: PouchFive()
; u:: QuitOut()

; Arrow key for shopping

Ins::z
PgUp::x
Delete::Left
End::Down
PgDn::Right
Home::Up

; Arrow keys for map warp
Left::z
Right::x
^s:: Run("ms-screenclip:")

; Scroll keys
,::c
.::v

#SuspendExempt
f9:: Suspend -1
#SuspendExempt False

#HotIf