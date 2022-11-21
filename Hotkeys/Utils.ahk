Click(NumberOfClicks := 1)
{
	MouseGetPos(&XMousePos, &YMousePos)
	ControlClick("x" XMousePos " y" YMousePos,"ahk_exe IdleSkilling.exe",,"left", NumberOfClicks)
}

ClickRelative(X, Y, NumberOfClicks := 1)
{
	WinGetPos(&XWinSize, &YWinSize, &WinWidth, &WinHeight, "ahk_exe IdleSkilling.exe")
	XMouseClick := X * WinWidth
	YMouseClick := Y * WinHeight
	ControlClick("x" XMouseClick " y" YMouseClick,"ahk_exe IdleSkilling.exe",,"left", NumberOfClicks)
	; Debugging purposes
	; MouseClick("left", XMouseClick, YMouseClick)
}

ClickRelativeExplicitEvents(X, Y)
{
	WinGetPos(&XWinSize, &YWinSize, &WinWidth, &WinHeight, "ahk_exe IdleSkilling.exe")
	XMouseClick := X * WinWidth
	YMouseClick := Y * WinHeight
	MouseClick("left", XMouseClick, YMouseClick,,, "D")
	Sleep 30
	MouseClick("left", XMouseClick, YMouseClick,,, "U")
	return
}

CheckPos()
{
	WinGetPos(&XWinSize, &YWinSize, &WinWidth, &WinHeight, "ahk_exe IdleSkilling.exe")
	MouseGetPos(&XMousePos, &YMousePos)
	X := XMousePos / WinWidth
	Y := YMousePos / WinHeight
	MsgBox "" X " " Y
}

Repeat(func, time := 10)
{
	static toggle := false
	toggle := !toggle
	SetTimer(%func%, toggle ? time : 0)
}