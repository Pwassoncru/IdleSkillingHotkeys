ResetAndBoost()
{
	ClickRelative(resetTinkerX, resetTinkerY)
	Sleep 100
	
	ClickRelative(confirmTinkerX, confirmTinkerY)
	Sleep 100
	
	SpamClickAt(upgradeTinkerX, upgradeTinkerY, 20)
}
