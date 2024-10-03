#Requires AutoHotkey v2.0

; Sets a maximum of 150 hotkeys in 1 second
; Mouse wheel can flood with a lot of inputs

A_HotkeyInterval := 1000
A_MaxHotkeysPerInterval := 150

; CapsLock toggles between setting the current active window
; to ~65% opacity and turning opacity off

CapsLock::
{
	if (WinGetTransparent('A') = '')
        WinSetTransparent(160, 'A')
    else
        WinSetTransparent('Off', 'A')
}

; Opacity functions get current active window transparency and either set it to 255 if it's off and going down
; or turn it off if it's 255 and going up. This mitigates performance penalties of leaving it on.


OpacityDown()
{
  ; MouseGetPos ,, &MouseWin
  ; current_opacity := WinGetTransparent(MouseWin)
  current_opacity := WinGetTransparent('A')
  if (current_opacity = '')
    {
	  current_opacity := 255
    }
  current_opacity -= 5
  if (current_opacity <= 35)
    {
	  current_opacity := 35
    }
  ; WinSetTransparent(current_opacity, MouseWin)
  WinSetTransparent(current_opacity, 'A')

}

OpacityUp()
{
  ; MouseGetPos ,, &MouseWin
  ; current_opacity := WinGetTransparent(MouseWin)
  current_opacity := WinGetTransparent('A')
  if ( current_opacity != '' )
    {
	  current_opacity += 5
	  ; WinSetTransparent(current_opacity, MouseWin)
  	  WinSetTransparent(current_opacity, 'A')

    if (current_opacity >= 255)
      {
	    ; WinSetTransparent('Off', MouseWin)
		WinSetTransparent('Off', 'A')
      }
	}
}
!WheelDown::OpacityDown()
!WheelUp::OpacityUp()
