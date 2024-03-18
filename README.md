# 🗡️ AhkScripts

My personal collection of Ahk2 Scripts.  

## 💌 What are these AutoHotKey Scripts ?

Ahk Scripts make any desire in key-binds possible no matter how weird it is. You can overcome any keybind-design problems that developers leave out in their games. I.e.:

* rebind "Win", "CapsLock" for gaming only without any heavy software.
* in dota "Alt+`" just doesn't work for some Source 2 reason
* Elden Ring controls aren't streamlined well from KBM perspective
* much more, my desired quirks are in this repo.

## 🛠️ Installing

You need to generate `.exe` file with standard Ahk2exe procedure:

* Install [AutoHotkey Version 2](https://www.autohotkey.com/) (Attention! Version 2).
* choose Compile option that will download/open Ahk2exe application.
* Choose `main.ahk` from current repo as Source (script file).
* Press "Convert"
* It will generate `main.exe` file which you can just run for keybinds to work
* Now if you want the `.exe` to work persistent through Windows reboots follow the section below

## 🔃 Making scripts work persistent through Windows reboots

* Make a shortcut for `main.exe` generated in the previous section.
* Put the shortcut into special Windows `Startup` folder:
    * press `Win+R` and type `shell:startup` to reach there
* Done! Now the script should be running even after PC restarts.
