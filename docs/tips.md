# 🤯 Practices Tips

I rarely code with `.ahk` so here are some notes and reminders for future me.

## 1. Links

<table>
<tr>
<th style="text-align: center;">Name</th>
<th style="text-align: center;">Link </th>
</tr>
<tr>
<td>Hotkeys</td>
<td><a href="https://www.autohotkey.com/docs/v2/Hotkeys.htm">autohotkey.com/docs/v2/Hotkeys.htm</a></td>
</tr>
<tr>
<td>KeyList</td>
<td><a href="https://www.autohotkey.com/docs/v2/KeyList.htm">https://www.autohotkey.com/docs/v2/KeyList.htm</a></td>
</tr>
</table>

## 2. Prefixes

```txt
#       Windows
!       Alt
^       Ctrl
+       Shift
~       Do not lose original key (the key still does its normal thing too)
< >     Left / Right modifier only, i.e. <#Tab is LWin+Tab, >!a is RAlt+a
$       Do not let the hotkey trigger itself when it sends its own key
*       Fire even if extra modifiers are held down
&       Custom combo of two keys, i.e. LWin & s (see "LWin memes" below)
```

I'm really not sure how to remember which is which 🤔.

## 3. Common mistakes

1. Indexing in AHK starts from 1 so `array[1]` fetches the first element (unlike other languages where it would be `array[0]`)

2. Keep letters lowercase on the **right** side of a remap

    The hotkey (left) side is case-insensitive, so `Q::ESC` and `q::ESC` are the same thing.
    But the remap target (right) side is not - an uppercase letter there is sent as a capital, i.e. with Shift:

    ```ahk
    q::E  ; Incorrect, it sends "Shift+e"
    q::e  ; Correct.
    ```

3. `LWin` key memes. For some reason, doing things like `LWin & S::X` or `<#Tab::X` disables functionality of `LWin::Y`. Honourable mention:

    In past, we used this code to solve the screenshot problem in Dota 2.
    (Don't copy it: besides the `LWin` problem, `Send "{AppsKey} & {S}"` types a literal " & " instead of pressing a combo.)

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

    However, as noted it breaks `LWin::AppsKey`, so therefore do not do that^; find something simple, like a different keybind. Currently it's `^+s::Run("ms-screenclip:")` in Dota 2 and `^s::Run("ms-screenclip:")` in Elden Ring.
