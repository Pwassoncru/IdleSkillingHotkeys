WriteDigit(digit)
{
	if (digit > 10)
	{
		MsgBox "digit > 10: fail"
	}
	
	col := Mod(digit, 3)
	line := digit // 3
	
	ClickRelative(VendingMachineNumX + col * VendingMachineShiftX, VendingMachineNumY + line * VendingMachineShiftY)
}

WriteNumber(x1, x2, x3, x4)
{
	WriteDigit(x1)
	Sleep 50
	WriteDigit(x2)
	Sleep 50
	WriteDigit(x3)
	Sleep 50
	WriteDigit(x4)
}

CrackTheCode(startNumber := 0)
{
	x1 := startNumber // 1000
	startNumber := startNumber - x1 * 1000
	x2 := startNumber // 100
	startNumber := startNumber - x2 * 100
	x3 := startNumber // 10
	startNumber := startNumber - x3 * 10
	x4 := startNumber
	
	while (x1 < 11)
	{
		WriteNumber(x1, x2, x3, x4)
		Sleep 2000
		x4++
		if (x4 > 10)
		{
			x4 := 0
			x3++
			if (x3 > 10)
			{
				x3 := 0
				x2++
				if (x2 > 10)
				{
					x2 := 0
					x1++
				}
			}
		}
	}
}