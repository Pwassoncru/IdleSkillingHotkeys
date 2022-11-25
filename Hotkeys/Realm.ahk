LevelUp(Number)
{
	; SpamClickRelativeWithDelay(RealmRightX, RealmRightY, Number, 100)
	ClickRelative(RealmRightX, RealmRightY, Number)
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

None()
{
}

R()
{
	UpgradeRight(9)
}

L()
{
	UpgradeLeft(11)
}

RR()
{
	R()
	Sleep 100
	UpgradeRight(43)
}

RL()
{
	R()
	Sleep 100
	UpgradeLeft(43)
}

LR()
{
	L()
	Sleep 100
	UpgradeRight(43)
}

LL()
{
	L()
	Sleep 100
	UpgradeLeft(43)
}

RRR()
{
	RR()
	Sleep 100
	UpgradeRight(154)
}

RRL()
{
	RR()
	Sleep 100
	UpgradeLeft(154)
}

RLR()
{
	RL()
	Sleep 100
	UpgradeRight(154)
}

RLL()
{
	RL()
	Sleep 100
	UpgradeLeft(154)
}

LRR()
{
	LR()
	Sleep 100
	UpgradeRight(154)
}

LRL()
{
	LR()
	Sleep 100
	UpgradeLeft(154)
}

LLR()
{
	LL()
	Sleep 100
	UpgradeRight(154)
}

LLL()
{
	LL()
	Sleep 100
	UpgradeLeft(154)
}

Reset()
{
	ClickRelative(PetThirdColX, PetSecondLineY)
}

Pig(Number := 1)
{
	Reset()
	Sleep 50
    ClickRelative(PetFirstColX, PetFirstLineY)
	Sleep 200
	ClickRelative(SummonX, SummonY, Number)
}

Rock(Number := 1)
{
	Reset()
	Sleep 50
    ClickRelative(PetSecondColX, PetFirstLineY)
	Sleep 200
	ClickRelative(SummonX, SummonY, Number)
}

Egg(Number := 1)
{
	Reset()
	Sleep 50
    ClickRelative(PetThirdColX, PetFirstLineY)
	Sleep 200
	ClickRelative(SummonX, SummonY, Number)
}

Ogre(Number := 1)
{
	Reset()
	Sleep 50
    ClickRelative(PetFirstColX, PetSecondLineY)
	Sleep 200
	ClickRelative(SummonX, SummonY, Number)
}

Torch(Number := 1)
{
	Reset()
	Sleep 50
    ClickRelative(PetSecondColX, PetSecondLineY)
	Sleep 200
	ClickRelative(SummonX, SummonY, Number)
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
	RightPage()
	Sleep 200
	OpenTower()
	Sleep 200
	Laser()
	Sleep 50
	LeftPage()
}

global petUpgrades := Map(
	"Little Piggy", "Pig|None",
	"Pet Rock", "Rock|None",
	"Baby Egg", "Egg|None",
	"Ogre Spawn", "Ogre|None",
	"Torchy", "Torch|None",
	
	
	"Boar", "Pig|L",
	"Hippo", "Pig|R",
	
	"Moutain", "Rock|L",
	"Asteroid", "Rock|R",
	
	"Lil Chicken", "Egg|L",
	"Lizard", "Egg|R",
	
	"Gobbo", "Ogre|L",
	"Ogre", "Ogre|R",
	
	
	"Chromar", "Pig|LL",
	"Devilar", "Pig|LR",
	"Horn Hippo", "Pig|RL",
	"Beeg Hippo", "Pig|RR",

	"Snowy Peak", "Rock|LL",
	"Volcano", "Rock|LR",
	"Jupeter", "Rock|RL",
	"Astralis", "Rock|RR",

	"Duck", "Egg|LL",
	"Goose", "Egg|LR",
	"Crocodile", "Egg|RL",
	"Iguana", "Egg|RR",
	
	"Orc", "Ogre|LL",
	"Lizardman", "Ogre|LR",
	"Ogre Giant", "Ogre|RL",
	"Flesh Ogre", "Ogre|RR",


	"Gemmar", "Pig|LLL",
	"Jekyllar", "Pig|LLR",
	"Mammoth", "Pig|LRL",
	"Iceular", "Pig|LRR",
	"Rainboppo", "Pig|RLL",
	"Hippemo", "Pig|RLR",
	"Tarantuppo", "Pig|RRL",
	"Chonkoppo", "Pig|RRR",

	"Glaciar", "Rock|LLL",
	"Everest", "Rock|LLR",
	"Pompeille", "Rock|LRL",
	"Meltor", "Rock|LRR",
	"Gasseon", "Rock|RLL",
	"Orbiteer", "Rock|RLR",
	"Martianus", "Rock|RRL",
	"Luminavi", "Rock|RRR",
	
	"Phaser Duck", "Egg|LLL",
	"Cinderduck", "Egg|LLR",
	"Stork", "Egg|LRL",
	"Echo Delta", "Egg|LRR",
	"Crikeydile", "Egg|RLL",
	"Eggligator", "Egg|RLR",
	"Purpback", "Egg|RRL",
	"Blaken Gold", "Egg|RRR",

	"Bulwark Orc", "Ogre|LLL",
	"Tundra Orc", "Ogre|LLR",
	"Scissarus", "Ogre|LRL",
	"Retiarius", "Ogre|LRR",
	"Hugh Mungus", "Ogre|RLL",
	"Musculor", "Ogre|RLR",
	"Corruptor", "Ogre|RRL",
	"Big Bone", "Ogre|RRR")
	
SelectUpgrade(str)
{
	value := petUpgrades.get(str)
	array := StrSplit(value, "|")
	%array[2]%()
}

SelectSummon(str)
{
	value := petUpgrades.get(str)
	array := StrSplit(value, "|")
	%array[1]%()
}

SummonAll(params)
{
	for index, param in params
	{
		SelectSummon(param)
	}
}

UpgradeAll(params)
{
	ix := 1
	iy := 0
	iz := 0
	cols := 4
	lines := 5
	ClickRelative(BarnPage1X, BarnPage1Y)
	Sleep 100
	for index,param in params
	{
		ClickRelative(BarnX + ix * BarnShiftX, BarnY + iy * BarnShiftY)
		Sleep 100
		SelectUpgrade(param)
		Sleep 100
		ix++
		if (ix >= cols)
		{
			ix := 0
			iy++
			if (iy >= lines)
			{
				iy := 0
				iz++
				ClickRelative(BarnPage1X, BarnPage1Y + iz * BarnPageShiftY)
				Sleep 100
			}
		}
	}
}

Setup(params*)
{
	RightPage
	Sleep 500
	ClickRelative(OpenPortalX, OpenPortalY)
	Sleep 500
	SummonAll(params)
	Sleep 100
	CloseBuilding()
	Sleep 100
	ClickRelative(OpenBarnX, OpenBarnY)
	Sleep 100
	UpgradeAll(params)
}
