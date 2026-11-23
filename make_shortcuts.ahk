/*
Creates Windows shortcuts (.lnk) in shortcuts\ink for every launcher script in shortcuts\*.ahk.

A launcher describes its shortcuts with comment lines:
    ; @shortcut <Name>                 - a shortcut without arguments
    ; @shortcut <Name> | <arguments>   - a shortcut that passes arguments to the script
    ; @icon <path>                     - icon for all of the script's shortcuts
Without any `@shortcut` line, the script gets one shortcut named after its file.
Without `@icon`, the icon is taken from the script's `TraySetIcon("...")` line.

Old shortcuts that point to a launcher script are deleted first, so renamed or removed ones don't linger.
Usage: double-click, or run `make_shortcuts.ahk` from a terminal in this folder.
*/
#Requires AutoHotkey v2.0

LAUNCHERS_DIR := A_ScriptDir "\shortcuts"
OUT_DIR := LAUNCHERS_DIR "\ink"

; Patterns for the lines we look for in a launcher
SHORTCUT_LINE := "^\s*;\s*@shortcut\s+([^|]+?)\s*(?:\|\s*(.*?))?\s*$"  ; "; @shortcut Name | args"  (the "| args" part is optional)
ICON_LINE := "^\s*;\s*@icon\s+(.+?)\s*$"                               ; "; @icon C:\path\icon.ico"
TRAY_ICON_LINE := 'i)^\s*TraySetIcon\(\s*"([^"]+)"'                     ; 'TraySetIcon("C:\path\game.exe")'

Report := []  ; lines to show when we're done

Main()

Main() {
    DirCreate(OUT_DIR)
    DeleteOldShortcuts()

    loop files LAUNCHERS_DIR "\*.ahk" {
        for Shortcut in ReadShortcuts(A_LoopFileFullPath)
            CreateShortcut(A_LoopFileFullPath, Shortcut)
    }

    ShowReport()
}

/**
 * Delete the .lnk files in the output folder that point to a launcher script.
 * Shortcuts pointing anywhere else are left alone.
 */
DeleteOldShortcuts() {
    loop files OUT_DIR "\*.lnk" {
        FileGetShortcut(A_LoopFileFullPath, &Target)
        SplitPath(Target, , &TargetDir)
        if (TargetDir = LAUNCHERS_DIR)
            FileDelete(A_LoopFileFullPath)
    }
}

/**
 * Read the shortcuts a launcher script asks for in its `@shortcut` / `@icon` lines.
 * Falls back to one shortcut named after the file, and to the `TraySetIcon` path for the icon.
 * @param Script Full path to the launcher .ahk
 * @returns Array of objects with `Name`, `Args` and `Icon`
 */
ReadShortcuts(Script) {
    Shortcuts := []
    IconDirective := ""
    TrayIcon := ""

    loop parse FileRead(Script), "`n", "`r" {
        if RegExMatch(A_LoopField, SHORTCUT_LINE, &m)
            Shortcuts.Push({Name: m[1], Args: m[2]})
        else if RegExMatch(A_LoopField, ICON_LINE, &m)
            IconDirective := m[1]
        else if (!TrayIcon && RegExMatch(A_LoopField, TRAY_ICON_LINE, &m))
            TrayIcon := m[1]
    }

    if !Shortcuts.Length {
        SplitPath(Script, , , , &NameNoExt)
        Shortcuts.Push({Name: NameNoExt, Args: ""})
    }

    Icon := IconDirective ? IconDirective : TrayIcon
    if (Icon && !FileExist(Icon)) {
        Report.Push("WARNING: icon not found, using default: " Icon)
        Icon := ""
    }

    for Shortcut in Shortcuts
        Shortcut.Icon := Icon
    return Shortcuts
}

/**
 * Create `<Name>.lnk` in the output folder that runs the launcher script with the shortcut's arguments.
 * @param Script Full path to the launcher .ahk
 * @param Shortcut Object with `Name`, `Args` and `Icon`
 */
CreateShortcut(Script, Shortcut) {
    FileCreateShortcut(Script, OUT_DIR "\" Shortcut.Name ".lnk", LAUNCHERS_DIR, Shortcut.Args, , Shortcut.Icon)
    Report.Push(Shortcut.Name ".lnk" (Shortcut.Args ? "  (" Shortcut.Args ")" : ""))
}

/** Print the list of created shortcuts to the terminal (if any) and show it in a popup that closes after 5 seconds. */
ShowReport() {
    Text := "Created in " OUT_DIR ":`n`n"
    for Line in Report
        Text .= Line "`n"

    try FileAppend(Text, "*")
    MsgBox(Text, "make_shortcuts", "T5")
}
