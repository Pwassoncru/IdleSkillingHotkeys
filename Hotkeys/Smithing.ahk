ClassicLevelUp()
{
	ClickRelative(SmithCraftX, SmithCraftY, 5)
	Sleep 2000
}

BulkLevelUp()
{
	ClickRelative(SmithBulkCraftX, SmithBulkCraftY, 9)
}

MaxLevelUp()
{
	ClassicLevelUp
	BulkLevelUp
}

Switcher(func)
{
	areas := 10
	lines := 2
	cols := 4
	ix := 0
	iy := 0
	Loop areas * lines * cols
	{
		ClickRelativeExplicitEvents(SmithItemX + ix * SmithItemShiftX, SmithItemY + iy * SmithItemShiftY)
		Sleep 500
		%func%()
		Sleep 500
		ix++
		if (ix >= cols)
		{
			ix := 0
			iy++
		}
		if (iy >= lines)
		{
			ClickRelative(SmithNextPageX, SmithNextPageY)
			Sleep 500
			iy := 0	
		}
	}
}

FarmTraces()
{
	Switcher("ClassicLevelUp")
}

MaxEverything()
{
	Switcher("MaxLevelUp")
}

