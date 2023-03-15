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
    global g_SpellsSlots

    iterations := f_findIterations(target, g_CurrentSpellSlot, g_SpellsSlots)

    MsgBox iterations "," target "," g_CurrentSpellSlot "," g_SpellsSlots 

    loop iterations {
        Send "{" g_UpSwitchSorceryIncantation " down}"
        sleep 25
        Send "{" g_UpSwitchSorceryIncantation " up}"
        sleep 25
    }

    g_CurrentSpellSlot := target
}