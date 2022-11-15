ResetAndOpenTreasures()
{
	ClickRelative(extractX, extractY)
	Sleep 50
	
	SpamClickAt(bagX, bagY, 5)
	Sleep 3000
	
	ClickRelative(extractX, extractY)
	return
}

SpamTreasures(Number)
{
	Loop Number
	{
		ResetAndOpenTreasures()
		Sleep 5000
	}
	return
}