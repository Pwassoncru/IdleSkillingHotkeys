ResetAndOpenTreasures()
{
	ClickRelative(extractX, extractY)
	Sleep 50
	
	ClickRelative(bagX, bagY, 5)
	Sleep 3000
	
	ClickRelative(extractX, extractY)
	return
}

SpamTreasures(Number := 1)
{
	Loop Number
	{
		ResetAndOpenTreasures()
		Sleep 3000
	}
	return
}