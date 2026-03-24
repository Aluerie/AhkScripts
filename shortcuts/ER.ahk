/*
A Special shortcut to launch Elden Ring and some helper apps with a single click.
*/
#Requires AutoHotkey v2.0
TraySetIcon("C:\_GAMES\Elden Ring\Game\eldenring.exe")

AHK_ER_EXE := "ahk_exe eldenring.exe"

Run('conhost.exe --headless me3.exe launch -p eldenring-default')
Sleep 2000
Run("C:\_GAMES\Elden Ring Helpers\TarnishedTool.exe")

/*
; Try to fix ER Cursor unlock issue
; it doesn't work well

SetTimer(WatchEldenRing, 66)
WatchEldenRing(*) {
    if WinExist(AHK_ER_EXE) {
        if WinActive(AHK_ER_EXE) {
            ClipCursorToWindow(AHK_ER_EXE)
        } else {
            DllCall("ClipCursor", "UInt", 0)
        }
    } else {
        SetTimer(WatchEldenRing, 0)
    }
}
ClipCursorToWindow(WindowTitle) {
    WinGetPos(&X, &Y, &Width, &Height, WindowTitle)
    Rect := Buffer(16, 0)
    for index, value in [X, Y, X + Width, Y + Height] {
        NumPut("Int", value, Rect, 4 * (index - 1))
    }
    DllCall("ClipCursor", "UInt", Rect.Ptr)
}
*/

WinWaitClose(AHK_ER_EXE)

for index, window in [
    "TarnishedTool"
] {
    ahk_exe := "ahk_exe " window ".exe"
    if WinExist(ahk_exe) {
        WinClose(ahk_exe)
    }
}
