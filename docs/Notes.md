# Tips

I rarely code with `.ahk` so here are some notes to help me out when I come back.

## 1. Links

| Name    | Link    |
| ------- | ------- |
| Hotkeys | <https://www.autohotkey.com/docs/v2/Hotkeys.htm> |
| KeyList | <https://www.autohotkey.com/docs/v2/KeyList.htm> |

## 2. Hotkey prefixes

```yaml
#       Windows
!       Alt
^       Ctrl
+       Shift
```

## 3. Common practices

### 3.1 Naming

Most of my names are pretty simple, because the project is small, but if we ever go with something more structured then we should use the following:

```yaml
g_      Global Variable
v_      Variable
s_      Subroutine
f_      function
c_      class
```

## 4. Common mistakes

### 4.1. Do not use `Q::ESC` where Q is a big letter

One of the biggest problems I ever faced:

```ahk
Q::ESC  ; Incorrect, it will only work for Shift+Q bcs it's a big Q 
q::ESC  ; Correct.
```

Honestly, I think Ahk2 is annoying/wrong about this design choice. If I wanted to change `Shift + Q` I would type `+Q::ESC` signifying my intentions with that `+` modifier. Maybe, there is something I don't know about, of course.
