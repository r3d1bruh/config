#MaxHotkeysPerInterval 1000000 ; Set to a very high value
#HotkeyInterval 1000 ; Default interval
::!name::
Send, Md. Ridoanul Islam
return

::!id::
Send, 24301222
return

; Disable mouse scroll wheel
WheelDown::Return
WheelUp::Return
WheelLeft::Return
WheelRight::Return

^Up:: ; Scroll up with Ctrl + Up Arrow
Send {WheelUp}
return

^Down:: ; Scroll down with Ctrl + Down Arrow
Send {WheelDown}
return

; Hotkey to press End and type a semicolon
RAlt::
Send, {End};
return


