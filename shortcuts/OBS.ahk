/*
Launch OBS together with an SSH tunnel to IreBot's VPS, and close the tunnel when OBS closes.

The tunnel serves the bot's stream overlays at http://localhost:4344 (e.g. the chat overlay at
http://localhost:4344/overlay/chat?key=...). They can't come straight from the bot's public URL,
because the ISP freezes bigger downloads (animated emotes) on it, while SSH gets them through fine.
If the tunnel drops, it's restarted for as long as OBS is open.
*/
#Requires AutoHotkey v2.0
#SingleInstance Force
; @shortcut OBS (ahk)
TraySetIcon("C:\Program Files\obs-studio\bin\64bit\obs64.exe")

OBS_DIR := "C:\Program Files\obs-studio\bin\64bit"
OBS_EXE := "obs64.exe"
; Windows' own ssh.exe, with the `vps` host from ~/.ssh/config. BatchMode: fail instead of asking for anything.
TUNNEL_CMD := 'C:\Windows\System32\OpenSSH\ssh.exe -N -L 4344:localhost:4343 vps'
    . ' -o BatchMode=yes -o ExitOnForwardFailure=yes -o ServerAliveInterval=15 -o ServerAliveCountMax=3'

TunnelPID := 0

; STEP 1. Launch OBS, unless it's already open (then just add the tunnel)
if !ProcessExist(OBS_EXE)
    Run(OBS_DIR "\" OBS_EXE, OBS_DIR)  ; OBS needs its own folder as the working directory
if !ProcessWait(OBS_EXE, 60)
    ExitApp

; STEP 2. Open the tunnel, close it however this script ends, and restart it if it drops
OnExit(CloseTunnel)
StartTunnel()
SetTimer(KeepTunnel, 5000)

; STEP 3. Close the tunnel when OBS closes
ProcessWaitClose(OBS_EXE)
ExitApp

StartTunnel() {
    global TunnelPID
    Run(TUNNEL_CMD, , "Hide", &TunnelPID)
}

KeepTunnel() {
    if !ProcessExist(TunnelPID)
        StartTunnel()
}

CloseTunnel(*) {
    SetTimer(KeepTunnel, 0)
    if ProcessExist(TunnelPID)
        ProcessClose(TunnelPID)
}
