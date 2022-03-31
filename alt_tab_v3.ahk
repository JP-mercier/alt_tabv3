#If WinActive("Destiny 2")

; author: jpmercier#1370

5::
    {
        WinActivate, NetLimiter 4
        Send, {Space}
        WinActivate, Destiny 2
    }
Return

6::
    WinActivate, NetLimiter 4
    toggle := !toggle
    if toggle {
        Send, {Down}
    }
    else {
        Send, {Up}
    }
    Loop, 3 
    {
        Send, {Tab}
    }
    WinActivate, Destiny 2
Return

^7::
ExitApp