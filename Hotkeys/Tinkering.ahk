ResetAndBoost()
{
	ClickRelative(resetTinkerX, resetTinkerY)
	Sleep 100
	
	ClickRelative(confirmTinkerX, confirmTinkerY)
	Sleep 100
	
	ClickRelative(upgradeTinkerX, upgradeTinkerY, 25)
}

BoostWithWait()
{
	ResetAndBoost
	Sleep 300
}

SpamBoost()
{
	Repeat("BoostWithWait")
}
