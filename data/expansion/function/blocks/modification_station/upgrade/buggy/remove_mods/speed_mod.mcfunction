loot replace block ~ ~ ~ container.0 loot expansion:items/gui/filler

data modify block ~ ~ ~ Items[{Slot:0b}] set from entity @s data.ModStorage.speed_mod

data remove entity @s data.ModStorage.speed_mod

scoreboard players set @s exp.speed_mod 10