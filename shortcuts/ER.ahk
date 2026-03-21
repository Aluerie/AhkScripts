/*
A Special shortcut to launch Elden Ring and some helper apps with a single click.
*/
#Requires AutoHotkey v2.0

Run(
    'powershell.exe Start-Process -FilePath '
    '"C:\Users\Me\AppData\Local\garyttierney\me3\config\profiles\eldenring-default.me3" '
    '-WindowStyle hidden'
)
Sleep 2000
Run("C:\_GAMES\Elden Ring Helpers\TarnishedTool.exe")

WinWaitClose("ahk_exe eldenring.exe")

windows := [
    "TarnishedTool",
]
for index, window in windows {
    ahk_exe := "ahk_exe " window ".exe"
    if WinExist(ahk_exe) {
        WinClose(ahk_exe)
    }
}
