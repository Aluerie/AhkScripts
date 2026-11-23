# 🛠️ Installation Guide

Installation is pretty standard.

## 🪜 General Steps

* Install [AutoHotkey Version 2](https://www.autohotkey.com/) (Attention! Version 2, my script is written with ahk2 syntax).
* Double-click `main.ahk` from the current repo - that's it, keybinds work.

### (Optional) Compiling into `.exe`

Running `main.ahk` directly is easier to edit, but if you prefer an `.exe`:

* Run AutoHotkey Dash and choose the Compile option that will download/open the Ahk2exe application.
* Choose `main.ahk` from current repo as Source (script file).
* Press "Convert"
* It will generate `main.exe` file which you can just run for keybinds to work.

## 🔃 Making scripts work persistently through Windows reboots

* Make a shortcut for `main.ahk` (or `main.exe` if you compiled it);
* Put the shortcut into special Windows `Startup` folder (press `Win+R` and type `shell:startup` to reach there);
* Done! Now the script should be running on every PC restart.

## 🎮 Game launchers (`shortcuts` folder)

These are separate one-shot scripts, not part of `main.ahk`. Each one launches a game together with its helper apps and closes the helpers when the game exits.

* `ER.ahk` - Elden Ring (via `me3`) + TarnishedTool, Save Organizer, AutoHitCounter.
* `Sekiro.ahk` - Sekiro (via `me3`) in true border-less mode + SekiroTool, Save Organizer, AutoHitCounter.
* `Silksong.ahk` - Silksong + OverBind. Takes one optional argument:
  * (none) - latest version, vanilla;
  * `--modded` - latest version with the SpeedGym BepInEx profile;
  * `--release` - release version (`Silksong 28324`) with the SpeedGym profile;
  * `--vanilla-release` - release version, vanilla.

The `.lnk` files in `shortcuts/ink` are ready-made shortcuts that pass these arguments.

> [!WARNING]
> All game and helper paths are hard-coded (`C:\_GAMES\...`, `C:\Program Files\OverBind\...`, the Cogfly profile in `%AppData%`), and `me3.exe` must be on `PATH`. Edit the paths inside each script to use them on another PC.
