NextCrusade()
{
	ClickRelative(CrusadeNextX, CrusadeNextY)
}

KillNextCrusade()
{
	NextCrusade
	Sleep 300
	SendAny(2)
}

NextWithWait()
{
	KillNextCrusade
	Sleep 2000
}

SpamNextCrusade()
{
	Repeat("NextWithWait")
}