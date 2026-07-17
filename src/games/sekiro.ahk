#HotIf WinActive("ahk_exe sekiro.exe")

; ESC::SC045
1::ESC
2::Z
z::Left

; F5:: {
;     /* Open the latest file in RECORDINGS\REPLAYS folder to observe in LosslessCut.
    
;     LosslessCut has nice features for viewing videos frame by frame.
;     */

;     latest_time := 0
;     file_path := ""
;     loop files "D:\RECORDINGS\REPLAYS\*.mkv" {
;         if A_LoopFileTimeCreated > latest_time {
;             latest_time := A_LoopFileTimeCreated
;             file_path := A_LoopFileFullPath
;         }
;     }
;     if file_path {
;         Run "C:\_PORTABLE\LosslessCut-win-x64\LosslessCut.exe `"" file_path "`""
;     } else {
;         MsgBox("You don't have any replays saved!", "No Replays Error", "icon!")
;     }
; }

h:: {
    ; Experimental for testing
    ; TODO: remove it
    Send "{s down}"
    Sleep 60
    Send "{Home down}"
    Sleep 160
    Send "{Home up}"
    Sleep 90
    Send "{Home down}"
    Sleep 60
    Send "{a down}"
    Sleep 160
    Send "{w down}"
    Sleep 50
    Send "{Home up}"
    Sleep 80
    Send "{s up}"
    Sleep 80
    Send "{a up}"
    Sleep 200
    Send "{w up}"
}

j:: {
    ; Experimental for testing
    ; TODO: remove it
    Send "{w down}"
    Sleep 20
    Send "{Home down}"
    Sleep 140
    Send "{Home up}"
    Sleep 60
    Send "{Home down}"
    Sleep 200
    Send "{w up}"
    Sleep 80
    Send "{s down}"
    Sleep 20
    Send "{Home up}"
    Sleep 80
    Send "{s up}"
    Sleep 120
    Send "{w down}"
    Sleep 200
    Send "{w up}"
}

#HotIf