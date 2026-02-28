# DPS Meter

Tracks and displays real-time DPS for all players visible in the combat log — similar to Recount in World of Warcraft.

## Features

- Shows up to 10 players sorted by DPS (highest first)
- Each row displays a bar (filled relative to the top player), name, DPS, and damage share %
- Top player bar is highlighted in gold; others in blue
- Elapsed fight time shown in the title
- Automatically detects end of fight (10 seconds of no combat activity) and freezes the display
- Next combat hit starts a fresh session
- Draggable window
- Reset button to manually clear the current session

## Usage

The window appears on load at the top-left of the screen. Drag it anywhere. Hit **Reset** to clear mid-fight.

## Notes

- Only `SPELL_DAMAGE` and `MELEE_DAMAGE` events are counted (no healing, no environmental damage)
- DPS is calculated as total damage divided by elapsed fight time
- Requires the `globals` folder from the [ArcheRage-addons](https://github.com/Schiz-n/ArcheRage-addons/tree/master/globals) repo
