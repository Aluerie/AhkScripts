# Tips

I rarely code with `.ahk` so here are some notes to help me out when I come back.

## Links

* Hotkeys - <https://www.autohotkey.com/docs/v2/Hotkeys.htm>
* KeyList - <https://www.autohotkey.com/docs/v2/KeyList.htm>

## Hotkey prefixes

```yaml
#       Windows
!       Alt
^       Ctrl
+       Shift
```

## Naming

Most of my names are pretty simple, because the project is small, but if we ever go with something more structured then we should use the following:

```yaml
g_      Global Variable
v_      Variable
s_      Subroutine
f_      function
c_      class
```

## Common mistakes

1. One of the biggest problems I ever faced:

    ```ahk
    Q::ESC  ; Incorrect, it will only work for Shift+Q bcs it's a big Q
    q::ESC  ; Correct.
    ```
