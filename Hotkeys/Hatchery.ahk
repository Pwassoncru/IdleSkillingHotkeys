HatcheryHatch_Keep()
{
	ClickRelative(HatchX, HatchY)
}

HatcheryTrash()
{
	ClickRelative(TrashX, TrashY)
}

HatcheryUpgrade(Prestige := 1, Multi := 3)
{
	clicks := (60/Multi + 1) * Prestige
	ClickRelative(HatcheryCategoryX, HatcheryValueY)
	ClickRelative(HatcheryUpgradeX, HatcheryUpgradeY, clicks)
	ClickRelative(HatcheryCategoryX, HatcherySpeedY)
	ClickRelative(HatcheryUpgradeX, HatcheryUpgradeY, clicks)
	ClickRelative(HatcheryCategoryX, HatcherySizeY)
	ClickRelative(HatcheryUpgradeX, HatcheryUpgradeY, clicks)
}

HatcheryUpgradeAll()
{
	inputPrestige := InputBox("Enter the actual prestige", "Prestige", "", "20")
	if (inputPrestige.Result != "OK")
		return

	inputMulti := InputBox("Enter the ticks per upgrade", "Multi Level", "", "3")
	if (inputMulti.Result != "OK")
		return

	HatcheryUpgrade(inputPrestige.Value, inputMulti.Value)
}

PrestigeUpgradeAndWait()
{

	ClickRelative(PrestigeX, PrestigeY)
	Sleep 100
	ClickRelative(PrestigeX, PrestigeY)
	Sleep 100
	HatcheryUpgrade
	Sleep 100
}

SpamHatcheryUpgradeAll()
{
	Repeat("PrestigeUpgradeAndWait")
}