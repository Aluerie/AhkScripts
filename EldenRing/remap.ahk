; classic Windows key rebind
; I would rebind it to some f-key but it's not bindandle in Elden Ring

; so we dont capslock people when we alt tab back
CapsLock::u

; this is for random context menus like Summon Torrent YES NO

LWin:: {
    Send "{Left down} "
    Sleep 25
    Send "{ " g_EventAction " down } "
    Sleep 25
    Send "{" g_EventAction " up} {Left up}"
}