; # SECTION 1. REMAP
/*
With SharpKeys tool we made the following changes in Windows Registry
* CapsLock -> Numpad4
* LWin -> AppsKey
* AppsKey -> RWin
This way we have
*/

AppsKey::LWin
CapsLock::Home

#HotIf WinActive("ahk_exe mpc-hc64.exe")

End::Space

#HotIf