#Persistent
SetCapsLockState, AlwaysOff

CapsLock::
    If (A_PriorHotkey=A_ThisHotkey && A_TimeSincePriorHotkey<400 && GetKeyState("CapsLock", "T")=0) {
        If(GetKeyState("CapsLock", "T")=0)
            SetCapsLockState, AlwaysOn
        Else
            SetCapsLockState, AlwaysOff
    }
    Else {
        SetCapsLockState, AlwaysOff
    }
    Return

Capslock & del::Send {Shift down}{Insert}{Shift Up}