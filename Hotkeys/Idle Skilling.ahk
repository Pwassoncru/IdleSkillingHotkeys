SendMode "Input"  				; Recommended for new scripts due to its superior speed and reliability.
CoordMode "Mouse", "Window"  		; Set coordinates of mouse relative to the active window
#Requires AutoHotkey v2.0-beta
#SingleInstance

#include Coordinates.ahk
#include Utils.ahk
#include Spells.ahk
#include Botany.ahk
#include Tinkering.ahk
#include Crusades.ahk
#include Spelunking.ahk
#include Realm.ahk
#include RealmSetups.ahk
#include Smithing.ahk
#include VendingMachine.ahk
#include Hatchery.ahk


#HotIf WinActive("Idle Skilling ahk_exe IdleSkilling.exe")


w:: Click(5)

^w:: Repeat("Click")

^!w:: SpamClickSilent


^q:: CheckPos


^c:: SwitchBasicSpells
	
^v:: SwitchAdvancedSpells


Right:: NextFlower

Left:: PrevFlower


s:: KillNextCrusade

^s:: SpamNextCrusade

r:: ResetAndBoost

^r:: SpamBoost


x:: ResetAndOpenTreasures

^x:: SpamTreasures


k:: ResetSetup2

t:: ActivateLaser

m:: CrackTheCode(1552)
; 3752


d:: FarmTraces

^d:: MaxEverything

c:: MaxLevelUp


a:: HatcheryHatch_Keep

z:: HatcheryTrash

e:: HatcheryUpgradeAll

^e:: SpamHatcheryUpgradeAll


#HotIf

	
^e:: ExitApp