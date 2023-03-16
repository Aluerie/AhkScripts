; Better "Select Ally 1" keybind (it centers the cam on them)

f_SelectAllyN(ally_N) {
    send ally_N
    sleep 10
    send ally_N
}

; as argument use my keybinds for Select Ally 1 2 3 4 5  
!1:: f_SelectAllyN("!1")
!2:: f_SelectAllyN("!2")
!3:: f_SelectAllyN("!3")
!4:: f_SelectAllyN("!4")
!5:: f_SelectAllyN("!5")
