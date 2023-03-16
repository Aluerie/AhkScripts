# 🗡️ AhkScripts

My personal collection of Ahk Scripts.  

## 👻 Disclaimer

This Project is written in AutoHotkey2 (I mean version 2) which is fundamentally different from v1.1. 

## 💌 What are these AutoHotkey Scripts ?

Ahk Scripts make any desire in key-binds possible no matter how weird that desire is. Or you can overcome any keybind-design problems that developers leave out in their games (For example in dota "Alt+`" just doesn't work for some Source 2 reason). Really, there is so much more to AutoHotkey Scripting. It's truly cool... 

## 🎮 What this repo has

You can read folder names to see what games I have scripts for. I might hide some games in different/depreciated branches so the code is there but isn't noisy. So check branches list too. 

## 🛠️ Installing

You need to generate `.exe` file with standard Ahk2exe procedure:
- Install [AutoHotkey](https://www.autohotkey.com/).
- choose Compile option that will download/open Ahk2exe application.
- Choose `ahk_main.ahk` from current repo as Source (script file).
- Press "Convert"
- It will generate `ahk_main.exe` file which you can just run for keybinds to work
- Now if you want the `.exe` to work persistent through Windows reboots follow the section below

## 🔃 Making scripts work persistent through Windows reboots

* Make a shortcut for `ahk_main.exe` generated in the previous section (but `ahk_main - Shortcut.lnk` should already exist and be fine).
* Put the shortcut into special Windows `Startup` folder:
  * which is `%appdata%\Microsoft\Windows\Start Menu\Programs\Startup`
  * or by `Win+R` and type `shell:startup`
  * but I left another `.lnk` file in this folder to reach this `StartUp` folder sa well.
* Done! Now you can restart the PC and have the script running.