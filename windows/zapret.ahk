/*

Notes
-----
* VSCode needs to be run in Administrator mode because zapret's exe files require Admin mode;

Sources
-------
* https://superuser.com/questions/1106317/how-can-i-make-a-bat-file-run-only-in-system-tray
*/

ZAPRET_WINDOW_NAME := "---] zapret: http,https,quic,youtube,discord [---"

ZapretMenu := Menu()

MyMenu := A_TrayMenu
MyMenu.Add("Zapret", ZapretMenu)

ZapretMenu.Add("Show", tray_show)
ZapretMenu.Add("Hide", tray_hide)
ZapretMenu.Add("Run", tray_run)

run_zapret() {
    Run "C:\DPI\YTDisBystro\1_preset_russia.cmd", , "Hide"
    WinWait(ZAPRET_WINDOW_NAME)
    WinHide(ZAPRET_WINDOW_NAME)
}
run_zapret()

tray_show(ItemName, ItemPos, MyMenu) {
    DetectHiddenWindows true
    if WinExist(ZAPRET_WINDOW_NAME) {
        WinShow(ZAPRET_WINDOW_NAME)
        WinActivate(ZAPRET_WINDOW_NAME)
    }
    DetectHiddenWindows false
}
tray_hide(ItemName, ItemPos, MyMenu) {
    if WinExist(ZAPRET_WINDOW_NAME) {
        WinHide(ZAPRET_WINDOW_NAME)
    }
}
tray_run(ItemName, ItemPos, MyMenu) {
    run_zapret()
}

