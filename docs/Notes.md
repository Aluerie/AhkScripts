# Notes & Tips

I rarely code with `.ahk` so here are some notes and reminders for future me.

## 1. Links

| Name    | Link                                             |
| ---     | ---                                              |
| Hotkeys | <https://www.autohotkey.com/docs/v2/Hotkeys.htm> |
| KeyList | <https://www.autohotkey.com/docs/v2/KeyList.htm> |

## 2. Hotkey prefixes

```txt
#       Windows
!       Alt
^       Ctrl
+       Shift
```

## 3. Common practices

## 4. Common mistakes

### 4.1. Do not use `Q::ESC` where `Q` is a Capital letter

Probably, one of the most frequent mistakes/typos I do:

```ahk
Q::ESC  ; Incorrect, it will only work for Shift+Q because it indeed interprets it as a capital "Q" 
q::ESC  ; Correct.
```

## 5. Old Mistakes

In past, we used this code to solve the screenshot problem in Dota 2.

```ahk
LWin & S:: {
    ; LShift -> LWin -> S
    if Getkeystate("LShift", "p") {
        Run("ms-screenclip:")
    }
    else {
        Send "{AppsKey} & {S}"
    }
}

LShift & S:: {
    ; LWin -> LShift -> S
    if Getkeystate("LWin", "p") {
        Run("ms-screenclip:")
    }
    else {
        Send "{LShift} & {S}"
    }
}
```

However, I realized that it breaks `LWin::AppsKey` in a way that it no longer works in Dota, but we need it in the actual game, so therefore do not use the complex code above; find something simple, like `^+P::Run("ms-screenclip:")`
