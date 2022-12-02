ClickAny(X, Y, NumberOfClicks)
{
	ControlClick("x" X " y" Y,"ahk_exe IdleSkilling.exe",,"left", NumberOfClicks)
	; Debugging purposes
	; MouseClick("left", X, Y)
}

SendAny(key)
{
	ControlSend(key,,"ahk_exe IdleSkilling.exe")
}

Click(NumberOfClicks := 1)
{
	MouseGetPos(&XMousePos, &YMousePos)
	ClickAny(XMousePos, YMousePos, NumberOfClicks)
}

ClickRelative(X, Y, NumberOfClicks := 1)
{
	WinGetPos(&XWinSize, &YWinSize, &WinWidth, &WinHeight, "ahk_exe IdleSkilling.exe")
	XMouseClick := X * WinWidth
	YMouseClick := Y * WinHeight
	ClickAny(XMouseClick, YMouseClick, NumberOfClicks)
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

SpamClickRelativeWithDelay(X, Y, NumberOfClicks := 1, Delay := 50)
{
	WinGetPos(&XWinSize, &YWinSize, &WinWidth, &WinHeight, "ahk_exe IdleSkilling.exe")
	XMouseClick := X * WinWidth
	YMouseClick := Y * WinHeight
	Loop NumberOfClicks
	{
		ClickAny(XMouseClick, YMouseClick, 1)
		Sleep Delay
	}
}

SpamClickSilent()
{
	MouseGetPos(&XMousePos, &YMousePos)
	Repeat("ClickAny", 10, XMousePos, YMousePos, 1)
}

CheckPos()
{
	WinGetPos(&XWinSize, &YWinSize, &WinWidth, &WinHeight, "ahk_exe IdleSkilling.exe")
	MouseGetPos(&XMousePos, &YMousePos)
	X := XMousePos / WinWidth
	Y := YMousePos / WinHeight
	MsgBox "" X " " Y
}

Repeat(func, time := 10, params*)
{
	static toggle := false
	static FuncsCalled := Map()
	toggle := !toggle
	if (toggle)
	{
		if (!FuncsCalled.Has(func))
			FuncsCalled[func] := %func%.Bind(params*)
		SetTimer(FuncsCalled[func], time)
	}
	else
	{
		if (FuncsCalled.Has(func))
		{
			SetTimer(FuncsCalled[func], 0)
			FuncsCalled.Delete(func)
		}
	}
}