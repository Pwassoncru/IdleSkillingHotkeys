SendMode "Input"  				; Recommended for new scripts due to its superior speed and reliability.
CoordMode "Mouse", "Window"  		; Set coordinates of mouse relative to the active window
#Requires AutoHotkey v2.0-beta
#SingleInstance

#include Coordinates.ahk
#include Utils.ahk
#include Spells.ahk
#include Botany.ahk
#include Tinkering.ahk
#include Spelunking.ahk
#include Realm.ahk
#include RealmSetups.ahk
#include Smithing.ahk


#HotIf WinActive("Idle Skilling")

w:: SpamClick(5)


^c:: SwitchBasicSpells

	
^v:: SwitchAdvancedSpells


Right:: NextFlower

Left:: PrevFlower

	
	
^r:: ResetAndBoost



x:: ResetAndOpenTreasures

	
^x:: SpamTreasures(10)


k:: ResetSetup1

t:: ActivateLaser

d:: FarmTraces

^d:: MaxEverything

c:: MaxLevelUp

	
^e:: ExitApp

#HotIf