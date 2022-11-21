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


#HotIf WinActive("Idle Skilling ahk_exe IdleSkilling.exe")

w:: Click(5)

^w:: Repeat("Click")

^q:: CheckPos


^c:: SwitchBasicSpells

	
^v:: SwitchAdvancedSpells


Right:: NextFlower

Left:: PrevFlower


s:: Repeat("SpamNextCrusade")
	
r:: ResetAndBoost

^r:: Repeat("ResetAndBoost")

x:: ResetAndOpenTreasures

	
^x:: Repeat("SpamTreasures")


k:: ResetSetup1

t:: ActivateLaser

d:: FarmTraces

^d:: MaxEverything

c:: MaxLevelUp

m:: CrackTheCode

; 2663

#HotIf


	
^e:: ExitApp