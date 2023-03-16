global g_SpellSlots := 7
;; TOOD: idk make a GUI for this so we can change it dynamically
global g_CurrentSpellSlot := 0
global isCycling := 0

f_findIterations(target, position, slots) {
    value := target - position
    if value >= 0 {
        return value
    }
    else {
        return slots + value
    }
}

f_FindSpellSlot(target) {
    global g_CurrentSpellSlot
    global g_SpellSlots
    global g_DebugMessage
    global isCycling

    iterations := f_findIterations(target, g_CurrentSpellSlot, g_SpellSlots)

    IF isCycling {
        gDebugMessage := "Currently Cycling to another slot"
        return 0
    }

    isCycling := 1
    loop iterations {
        Send "{" g_UpSwitchSorceryIncantation " down}"
        sleep 60  ; 25
        Send "{" g_UpSwitchSorceryIncantation " up}"
        sleep 40  ; 25
    }
    isCycling := 0

    g_CurrentSpellSlot := target

    g_DebugMessage := "iterations=" iterations ", target=" target ", curr_slot=" g_CurrentSpellSlot ", total_slots=" g_SpellSlots

}

; Spell slots 
1:: f_FindSpellSlot(0)  ; 0 = pebble
2:: f_FindSpellSlot(1)  ; 1 = rock swing
3:: f_FindSpellSlot(2)  ; 2 = adula moonblade
4:: f_FindSpellSlot(3)  ; 3 = loretta mastery
5:: f_FindSpellSlot(4)  ; 4 = comet azur
6:: f_FindSpellSlot(5)  ; 5 = ranni dark moon
7:: f_FindSpellSlot(6)  ; 6 = stars of ruin
