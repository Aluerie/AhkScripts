# 🗡️ AhkScripts

<img align="right" width="120" alt="AHK Logo" src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Modern_AutoHotkey_Logo_%28no_text%29.svg/1280px-Modern_AutoHotkey_Logo_%28no_text%29.svg.png">

My personal collection of [AutoHotkey v2](https://www.autohotkey.com/) scripts. These scripts create shortcuts, key bindings and macros that I use in games and in my daily life.

## 📦 What's inside

* **`main.ahk`** - the always-running script. Every key-bind below is only active while its game window is focused:
  * `src/dota2.ahk` - Dota 2 (binding "unbindable" keys like `Esc` and ``Alt+` ``, rate-limited taunt on mouse wheel);
  * `src/elden_ring.ahk` - Elden Ring (pouch / two-hand combos, menu macros, KBM quality-of-life rebinds);
  * `src/sekiro.ahk` - Sekiro;
  * `src/variety.ahk` - small fixes for variety games
* **`shortcuts/`** - one-click game launchers (Elden Ring, Sekiro, Silksong) that start the game with its helper apps and close them when the game exits.
* **`archive/`** - old snippets for games I no longer play.

## 🚀 Quick start

1. Install [AutoHotkey v2](https://www.autohotkey.com/) (v2 specifically - the scripts use v2 syntax).
2. Run `main.ahk`.

More details (compiling, running on startup, launcher setup) are in the wiki.

## 📖 Wiki

> [!IMPORTANT]
> I really like the GitHub wiki format, so most of the information lives in the [🏠 Wiki](https://github.com/Aluerie/AhkScripts/wiki) instead of being packed into this `README.md`:

* [🛠️ Installation Guide](https://github.com/Aluerie/AhkScripts/wiki/🛠️-Installation-Guide) - running, compiling, auto-start and game launchers;
* [🤯 Practices Tips](https://github.com/Aluerie/AhkScripts/wiki/🤯-Practices-Tips) - AHK notes, hotkey prefixes and common mistakes.
