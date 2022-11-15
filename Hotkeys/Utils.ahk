Click()
{
	MouseGetPos(&XMousePos, &YMousePos)
	MouseClick("left", XMousePos, YMousePos)
}

ClickRelative(X, Y)
{
	WinGetPos(&XWinSize, &YWinSize, &WinWidth, &WinHeight, "A")
	XMouseClick := X * WinWidth
	YMouseClick := Y * WinHeight
	MouseClick("left", XMouseClick, YMouseClick)
	return
}

ClickRelativeExplicitEvents(X, Y)
{
	WinGetPos(&XWinSize, &YWinSize, &WinWidth, &WinHeight, "A")
	XMouseClick := X * WinWidth
	YMouseClick := Y * WinHeight
	MouseClick("left", XMouseClick, YMouseClick,,, "D")
	Sleep 30
	MouseClick("left", XMouseClick, YMouseClick,,, "U")
	return
}

ClickRelativeWithComeBack(X, Y)
{
	MouseGetPos(&XMousePos, &YMousePos)
	ClickRelative(X, Y)
	Sleep 50
	
	MouseMove(XMousePos, YMousePos)
	return
}

SpamClick(Number, speed := 50)
{
	MouseGetPos(&XMousePos, &YMousePos)
	Loop Number
	{
		MouseClick("left", XMousePos, YMousePos)
		Sleep speed
	}
	return
}

SpamClickAt(X, Y, Number, speed := 50)
{
	WinGetPos(&XWinSize, &YWinSize, &WinWidth, &WinHeight, "A")
	XMouseClick := X * WinWidth
	YMouseClick := Y * WinHeight
	Loop Number
	{
		MouseClick("left", XMouseClick, YMouseClick)
		Sleep speed
	}
	return
}