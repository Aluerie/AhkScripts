; SECTION 1. MY PREFERENCES

; Elden Ring In-game Key Bindings.
PouchUp_SwitchSorceryIncantation := "4"
PouchDown_SwitchItem := "8"
PouchLeft_SwitchLeftHandArm := "Up"
PouchRight_SwitchRightHandArm := "Down"

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
    ; EventActionCombo(AttackRightHandTwoHand)
    ;
    ; This is TwoHanding via Strong Attack key
    ; It has an interesting advantage of being able to 2-hand a weapon in scenarios where
    ; Left Click (Light Attack) would trigger Riposte/Back-stab.
    EventActionCombo("Left")
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
Home::r  ; Jump
Shift::z  ; Ash of War + Menu LT
~SC029::y  ; A better key for Detailed View toggle

; f13::Up
; Delete::Left
; End::Down
; PgDn::Right

Numpad5::Up
Numpad2::Down
Numpad1::z
Numpad3::x

f::x  ; Item Usage - Menu RT
z::Up  ; Rebind so it doesn't get lost
x::Down  ; Rebind so it doesn't get lost

1:: OpenEquipment()
2:: OpenInventory()
4:: OpenCrafting()
; g:: OpenSystem()

t::F5  ; So we can bind it in the practice tool without losing access to "T: Sort"
f5::t  ; New key to "T: Sort" menu feature

r:: PouchUp()  ; heal
c:: PouchDown()  ; mana
v:: PouchRight()  ; physick
~Tab:: PouchLeft()  ; torrent

XButton1:: TwoHandLeft()  ; Mouse 4
XButton2:: TwoHandRight()  ; Mouse 5

f1:: PouchFive()

; i:: Gesture1()
f2:: Gesture6()
; j:: Gesture3()
; k:: Gesture4()
; n:: Gesture5()
; m:: Gesture6()

f4:: PauseTrick()
; o:: PouchFive()
; u:: QuitOut()

^s:: Run("ms-screenclip:")

#SuspendExempt
Pause:: Suspend -1
#SuspendExempt False

; TODO: We wanted to make NumPad keys to be our shop-menuing arrow keys so they have all the needed keys nearby;
#HotIf