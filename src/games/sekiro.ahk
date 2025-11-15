#HotIf WinActive("ahk_exe sekiro.exe")

Escape::SC045  ; Pause
1::ESC
2::Z
3::Left

; P:: {
;     ; https://discord.com/channels/689574638396899342/1084446670357540876/1382481491766018109
;     WinMove("ahk_exe sekiro.exe", , 0, 0, 2560, 1440)
;     ; https://www.autohotkey.com/docs/v2/lib/WinSetStyle.htm check it out next time
;     WinSetStyle(-0xC40000, "ahk_exe sekiro.exe")
; }

F5:: {
    ; Open the latest file in RECORDINGS\REPLAYS folder to observe in KeyFrame Pro

    latest_time := 0
    loop files "D:\RECORDINGS\REPLAYS\*.mp4" {
        if A_LoopFileTimeCreated > latest_time {
            latest_time := A_LoopFileTimeCreated
            file_path := A_LoopFileFullPath
        }
    }
    Run "C:\Program Files\Keyframe Pro\bin\KeyframePro.exe `"" file_path "`""
}

#HotIf