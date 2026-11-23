# 🗡️ AhkScripts

<img align="right" width="120" alt="AHK Logo" src="docs/images/ahk-logo.svg">

My personal collection of [AutoHotkey v2](https://www.autohotkey.com/) scripts. These scripts create shortcuts, key bindings and macros that I use in games and in my daily life.

AHK makes any key-bind possible, no matter how weird, and covers the gaps that games leave in their controls, i.e.:

* rebind "Win", "CapsLock" for gaming only without any heavy software;
* Dota 2: "Alt+`" just doesn't work for some Source 2 reason;
* Elden Ring: kbm controls are just not streamlined well.

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

More details (compiling, running on startup, launcher setup) are in the [installation guide](docs/installation.md).

## 📖 Docs

* [🛠️ Installation Guide](docs/installation.md) - running, compiling, auto-start and game launchers;
* [🤯 Practices Tips](docs/tips.md) - AHK notes, hotkey prefixes and common mistakes.
