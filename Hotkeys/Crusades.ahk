NextCrusade()
{
	ClickRelative(CrusadeNextX, CrusadeNextY)
}

SpamNextCrusade(Number)
{
	Loop Number
	{
		Send 2
		Sleep 2000
		NextCrusade
		Sleep 500
	}
}