#HotIf WinActive("ahk_exe dota2.exe")

; FOR AFK AFK IN SILT-BREAKER
PgUp:: {
    while (!GetKeyState("LButton")) {
        MouseMove 1180 + Random(0, 200), 620 + Random(0, 200)
        Send "{RButton}"
        Send "{End}"
        Sleep 4000
        Send "{F1}"
        Sleep 4000
        Send "{Space}"
        Sleep 4000
    }
}

#HotIf WinActive("ahk_exe SandFall-Win64-Shipping.exe") ; Expedition 33

2::q
3::e

q::ESC

#HotIf WinActive("ahk_exe hades.exe")

q::Escape

#HotIf WinActive("ahk_exe Hades2.exe")

q::ESC
x::i

#HotIf