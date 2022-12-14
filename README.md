# IdleSkillingHotkeys - AutoClicker

Those scripts are a bunch of hotkeys I created for the game Idle Skilling (steam version).

While admins on the official discord do not make the following distinction, I believe that
a HotKey is very different from scripting. While creating those Hotkeys, I focus entirely on removing
a boring aspect of the game while not gaining any advantage on other players.
For example, being able to open treasure bags, boost your tinkering gear, or simply change your flower to the next one
without clicking 6000000000 times. This does not gain time, simply gets rid of your boredom.

Remember that there are a lot of issues with those scripts, you can notify them to me in the 'Issues' tab of this repository.
Same goes for suggestions/changes.


## Requirements

AHK v2 needs to be installed. [Click here](https://www.autohotkey.com/v2/) to install it.
Idle Skilling is obviously recommended. Those shortcuts are for the steam version.

## Usage

Start the script ```Idle Skilling.ahk``` (double click on it).
You can edit the scripts as much as you like by opening them with a text editor.
You can change the hotkeys in the ```Idle Skilling.ahk``` file.
If the change is relevant for everyone, don't hesitate creating an issue on this repository, I will make the change.

## Hotkeys

|Keys|Area|Effect|
|:-----:|:---:|---|
|`W`|Any|Click 5 times at the position of your mouse. Holding it will spam click|
|`Ctrl + W`|Any|Toggle hotkey for the 'Click' action. It spams Click at the current cursor location. See Toggle section|
|`Ctrl + Alt + W`|Any|Toggle hotkey for the 'Click' action. It spams Click at the initial cursor location. Do not forget to toggle off when done|
|`Ctrl + Q`|Any|Give mouse location. Debug purpose|
|`Ctrl + E`|Any|Close the script and disable any ongoing hotkey. Very useful if fail|
|`Ctrl + C`|Battle|Switch the first line of spells. I am aware that it already exists a hotkey for that, but it is slow|
|`Ctrl + V`|Battle|Switch the second line of spells. Same than above, the provided hotkey are slow|
|`1`, `2`, `3`, `4`, `5`|Battle|Spell 1 to 5. I did not override those hotkeys, they are already included into the game and work very well.|
|`C`|Smithing|Craft 1000M of the selected item.|
|`D`|Smithing|Farm traces. It will go through all items and craft ~5k items|
|`Ctrl + D`|Smithing|Go through all items and craft 1000M items|
|`Right Arrow`|Botany|Change flower to the next one|
|`Left Arrow`|Botany|Change flower to the previous one|
|`S`|Crusade|Defeat a crusade and goes next|
|`Ctrl + S`|Crusade|Toggle action for the action above (crusade + next)|
|`R`|Boost|Maybe the most useful one. It resets and boosts your gear|
|`Ctrl + R`|Boost|Toggle hotkey for the action above (tinkering boost). Useful to increase boostio level|
|`X`|Spelunking|Extract, open bags and jump again|
|`Ctrl + X`|Spelunking|Toggle hotkey for the action above (bag extraction)|
|`K`|Realm|Create all the needed minions for you. More information in the Realm section|
|`T`|Realm|Activate tower laser and comes back to the middle panel.|
|`A`|Hatchery|Press on Hatch or Keep when on an nest with eggs|
|`Z`|Hatchery|Press on Trash when on an nest with eggs|
|`Y`|Hatchery|Upgrade the nest. It will ask for how many crowns you want, and your multi level|
|`Ctrl + Y`|Hatchery|Toggle hotkey for the action above (nest prestige)|
|`N`|Asylum boss|Knock Knock then defeats the boss. Compatible with Gorshank. Probably doesn't work with long animation raids (sentinel)|
|`Ctrl + N`|Asylum boss|Toggle hotkey for the action above (asylum boss)|

## Realm - Setups

You can provide a setup that will automatically be created/leveled up for you
- You need to have exactly one pet in your barn (to not be interrupted by the first boss death after a reset)
- You can decide the pets to create in ```RealmSetup.ahk```:
  - Provide the list of pet names. They will be created in order, and it does not include the first pet (the one already in the barn)
- Feel free to create/ask for new setups.

> **Warning**
>
> Scissarus will completely mess up the level up of all the minions that are created after it. It is recommended to either
> create Scissarus last, or to temporarily create a Lizardman instead, and level it up by hand. There is no way to fix this.

## Toggles

I added toggled hotkeys. If you press on ```Ctrl + W``` for example, it will repeat the 'Click' action until you press ```Ctrl + W``` again.
Not all hotkeys are supported, I will add more in the future.

## Vending machine

I added the hotkey ```M``` to bruteforce all vending machine combination. It takes around 8 hours to try them all.
