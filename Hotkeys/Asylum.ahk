DefeatAsylum()
{
	ClickRelative(AsylumKnockX, AsylumKnockY)
	Sleep 3000
	SendAny(2)
	Sleep 1000
	SendAny(1)
}

AsylumWithWait()
{
	DefeatAsylum
	Sleep 1000
}

SpamAsylum()
{
	Repeat("AsylumWithWait")
}