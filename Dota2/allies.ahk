; Better "Select Ally 1" keybind (it centers the cam on them)

f_SelectAllyN(ally_N) {
    send ally_N
    sleep 30
    send ally_N
}

; as argument use my keybinds for Select Ally 1 2 3 4 5
!f1:: f_SelectAllyN("{!f1}")
!f2:: f_SelectAllyN("{!f2}")
!f3:: f_SelectAllyN("{!f3}")
!f4:: f_SelectAllyN("{!f4}")
!5:: f_SelectAllyN("{!5}")

/*
Failure of the past

; Select Ally Keys
!f1::Numpad1
!F2::Numpad2
!f3::Numpad3
!f4::Numpad4
!5::Numpad5
*/