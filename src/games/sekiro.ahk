#HotIf WinActive("ahk_exe sekiro.exe")

1::ESC
2::Z
3::Left

F5:: {
    /* Open the latest file in RECORDINGS\REPLAYS folder to observe in LosslessCut.
    
    LosslessCut has nice features for viewing videos frame by frame.
    */

    latest_time := 0
    file_path := ""
    loop files "D:\RECORDINGS\REPLAYS\*.mkv" {
        if A_LoopFileTimeCreated > latest_time {
            latest_time := A_LoopFileTimeCreated
            file_path := A_LoopFileFullPath
        }
    }
    if file_path {
        Run "C:\_PORTABLE\LosslessCut-win-x64\LosslessCut.exe `"" file_path "`""
    } else {
        MsgBox("You don't have any replays saved!", "No Replays Error", "icon!")
    }
}

#HotIf