LevelUp(Number)
{
	SpamClickAt(RealmRightX, RealmRightY, Number, 65)
}

UpgradeRight(Number)
{
	LevelUp(Number)
	Sleep 1000
	ClickRelative(RealmRightX, RealmRightY)
}

UpgradeLeft(Number)
{
	LevelUp(Number)
	Sleep 1000
	ClickRelative(RealmLeftX, RealmLeftY)
}

RRR()
{
	UpgradeRight(9)
	Sleep 1000
	UpgradeRight(50)
	Sleep 1000
	UpgradeRight(150)
}

RRL()
{
	UpgradeRight(9)
	Sleep 1000
	UpgradeRight(50)
	Sleep 1000
	UpgradeLeft(150)
}

RLR()
{
	UpgradeRight(9)
	Sleep 1000
	UpgradeLeft(50)
	Sleep 1000
	UpgradeRight(150)
}

RLL()
{
	UpgradeRight(9)
	Sleep 1000
	UpgradeLeft(50)
	Sleep 1000
	UpgradeLeft(150)
}

LRR()
{
	UpgradeLeft(9)
	Sleep 1000
	UpgradeRight(50)
	Sleep 1000
	UpgradeRight(150)
}

LRL()
{
	UpgradeLeft(9)
	Sleep 1000
	UpgradeRight(50)
	Sleep 1000
	UpgradeLeft(150)
}

LLR()
{
	UpgradeLeft(9)
	Sleep 1000
	UpgradeLeft(50)
	Sleep 1000
	UpgradeRight(150)
}

LLL()
{
	UpgradeLeft(9)
	Sleep 1000
	UpgradeLeft(50)
	Sleep 1000
	UpgradeLeft(150)
}

SummonPigs(Number)
{
    ClickRelative(PetFirstColX, PetFirstLineY)
	Sleep 200
	SpamClickAt(SummonX, SummonY, Number)
}

SummonRocks(Number)
{
    ClickRelative(PetSecondColX, PetFirstLineY)
	Sleep 200
	SpamClickAt(SummonX, SummonY, Number)
}

SummonEggs(Number)
{
    ClickRelative(PetThirdColX, PetFirstLineY)
	Sleep 200
	SpamClickAt(SummonX, SummonY, Number)
}

SummonOgres(Number)
{
    ClickRelative(PetFirstColX, PetSecondLineY)
	Sleep 200
	SpamClickAt(SummonX, SummonY, Number)
}

SummonTorches(Number)
{
    ClickRelative(PetSecondColX, PetSecondLineY)
	Sleep 200
	SpamClickAt(SummonX, SummonY, Number)
}

RightPage()
{
    ClickRelative(RealmArrowRightX, RealmArrowY)
}

LeftPage()
{
    ClickRelative(RealmArrowLeftX, RealmArrowY)
}

OpenTower()
{
	ClickRelative(TowerX, TowerY)
}

Laser()
{
	ClickRelative(LaserX, LaserY)
}

CloseBuilding()
{
	ClickRelative(OutsideX, OutsideY)
}

ActivateLaser()
{
	MouseGetPos(&XMousePos, &YMousePos)
	RightPage()
	Sleep 500
	OpenTower()
	Sleep 500
	Laser()
	Sleep 500
	LeftPage()
	Sleep 50
	MouseMove(XMousePos, YMousePos)
}

global petUpgrades := Map(
	"Gemmar", "LLR",
	"Meltor", "LLR",
	"Cinderduck", "LLR",
	"Tundra Orc", "LLR",
	
	"Jekyllar", "LLL",
	"Pompeille", "LLL",
	"Phaser Duck", "LLL",
	"Bulwark Orc", "LLL",
	
	"Mammoth", "LRR",
	"Everest", "LRR",
	"Echo Delta", "LRR",
	"Retiarius", "LRR",
	
	"Iceular", "LRL",
	"Glaciar", "LRL",
	"Stork", "LRL",
	"Scissarus", "LRL",
	
	"Rainboppo", "RLL",
	"Gasseon", "RLL",
	"Crikeydile", "RLL",
	"Hugh Mungus", "RLL",
	
	"Tarantuppo", "RLR",
	"Orbiteer", "RLR",
	"Eggligator", "RLR",
	"Musculor", "RLR",
	
	"Chonkoppo", "RRR",
	"Martianus", "RRL",
	"Purpback", "RRL",
	"Corruptor", "RRL",
	
	"Hippemo", "RRR",
	"Luminavi", "RRR",
	"Blaken Gold", "RRR",
	"Big Bone", "RRR")
	
SelectUpgrade(str)
{
	%petUpgrades.get(str)%()
}

UpgradeAll(params)
{
	X := BarnX + BarnShiftX
	Y := BarnY
	PageY := BarnPage1Y
	ClickRelative(BarnPage1X, PageY)
	Sleep 100
	for index,param in params
	{
		ClickRelative(X, Y)
		Sleep 100
		SelectUpgrade(param)
		Sleep 100
		if (Mod(index + 1, 4) == 0)
		{
			X := BarnX
			if (Mod(index + 1, 20) == 0)
			{
				PageY := PageY + BarnPageShiftY
				ClickRelative(BarnPage1X, PageY)
				Sleep 100
				Y := BarnY
			}
			else
			{
				Y := Y + BarnShiftY
			}
		}
		else
		{
			X := X + BarnShiftX
		}
		Sleep 500
	}
}

Setup(NbPigs, NbRocks, NbEggs, NbOgres, NbTorches, params*)
{
	ClickRelative(OpenPortalX, OpenPortalY)
	Sleep 500
	SummonPigs(NbPigs)
	Sleep 500
	SummonRocks(NbRocks)
	Sleep 500
	SummonEggs(NbEggs)
	Sleep 500
	SummonOgres(NbOgres)
	Sleep 500
	SummonTorches(NbTorches)
	Sleep 500
	CloseBuilding()
	Sleep 100
	ClickRelative(OpenBarnX, OpenBarnY)
	Sleep 100
	UpgradeAll(params)
}
