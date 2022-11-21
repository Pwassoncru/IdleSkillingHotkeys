ResetAndOpenTreasures()
{
	ClickRelative(extractX, extractY)
	Sleep 50
	
	ClickRelative(bagX, bagY, 5)
	Sleep 3000
	
	ClickRelative(extractX, extractY)
	return
}

TreasureWithWait()
{
	ResetAndOpenTreasures
	Sleep 3000
}

SpamTreasures()
{
	Repeat("TreasureWithWait")
}