/*
DEBUG AHK PART

This small snippet just calls debug print to be on the left side of the screen
It's just debug print basically

To use this "debugger" just uncomment #include line in ahk_main.ahk

Then include
```
global g_DebugMessage
... * some code *
g_DebugMessage := "MyVariable = " v_MyVariable "rofl"
```
into the function you want to test
*/

KeyHistory
KeyHistory 400
InstallMouseHook

SetTimer S_GLOBALTIMER, 1

global g_DEBUG_TOGGLE := true
global g_DebugMessage := "Debug message will be there"

global text
global MyGui
global counter := 0

f_DebugUI() {
    global text
    global MyGui
    
    CustomColor := "EEAA99"
    MyGui := Gui("+LastFound +AlwaysOnTop -Caption +ToolWindow", "DebugGui")
    MyGui.BackColor := CustomColor
    MyGui.SetFont("cLime s20", "Calibri")
    text := MyGui.Add("Text", "vDebugMessage W1200" , g_DebugMessage)
    WinSetTransColor(CustomColor " 150", MyGui)
    MyGui.Show("X40 Y700 W1000 NoActivate")
}

S_GLOBALTIMER() {
    if g_DEBUG_TOGGLE {
        text.Value := g_DebugMessage
    }
}

if g_DEBUG_TOGGLE {
    f_DebugUI()
}

!^+a:: {
    global MyGui
    global g_DEBUG_TOGGLE

    if g_DEBUG_TOGGLE {
        MyGui.Destroy()
        g_DEBUG_TOGGLE := false
    }
    else {
        f_DebugUI()
        g_DEBUG_TOGGLE := true
    }
}

; RCtrl:: {
;     global g_DebugMessage
;     global counter 
;     counter := counter + 1
;     g_DebugMessage := counter
; }