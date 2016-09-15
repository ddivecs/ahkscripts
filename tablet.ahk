#Persistent
SetCapsLockState, AlwaysOff

CapsLock::
    If (A_PriorHotkey=A_ThisHotkey && A_TimeSincePriorHotkey<400)
        If(GetKeyState("CapsLock", "T")=0)
            SetCapsLockState, AlwaysOn
        Else
            SetCapsLockState, AlwaysOff
        Return
    Return

Capslock & del::Send {Shift down}{Insert}{Shift Up}