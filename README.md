# Mortal Kombat 4 AutoSplitter

### Autosplitter for [LiveSplit](https://github.com/LiveSplit/LiveSplit/releases) of Mortal Kombat 4 (PC).

AutoSplitter starts when you Choose Your Destiny, splits when level changes and resets on Main Menu.

In future there might be added support for allowed emulators for console versions.

### Please leave some feedback on how well the AutoSplitter works and report bugs.

### Memory addresses (PC)

| Name | Type | Module | OS0 | OSs | Description |
|---|---|---|---|---|---|
| chosenDestiny0 | int | mk4.exe | 0xEE9D0 | 0x208 | `0` when ladder is chosen. |
| chosenDestiny1 | int | mk4.exe | 0x3A6BB8 | 0xA8 | 4 different values. Only changes when ladder is chosen. |
| firstEnemy | int | mk4.exe | 0x895CC | 0x4 | `1` if you chose destiny and you are playing against the 1st enemy. Otherwise `0`. |
| enemyCharId0 | int | mk4.exe | 0x223B0 | 0x0 | Changes when Loading in Ladder appears, not changes when you continue. `8` when Shinnok. |
| enemyCharId1 | int | mk4.exe | 0x22380 | 0x0 | Changes when Loading in Ladder appears, not changes when you continue. `6` when Shinnok. |
| scene0 | int | mk4.exe | 0xB03E4 | 0x298 | `510` when Shinnok's defeated. `786` on Main Menu. `723` on CYD screen. In some scenes `369` when Option menu shows. |
| scene1 | int | mk4.exe | 0xB99F20 | 0xC, 0x4 | `177` on CYD screen, `263` on Main Menu, `8` when Shinnok's defeated. In some scenes `245` when Option menu shows. |
| status0 | int | mk4.exe | 0x1F31C | 0x570 | `5475712` on gameplay. `0` otherwise. |
| status1 | int | mk4.exe | 0x2B88 | 0x0 | `131234` on gameplay, `162` when the fight's won. `0` otherwise. |