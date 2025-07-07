loot replace block ~ ~ ~ container.9 loot expansion:items/gui/filler
data modify block ~ ~ ~ Items[{Slot:9b}] set from entity @s data.ModStorage.blaster
data remove entity @s data.ModStorage.blaster

data modify entity @s data.stats.blaster set value {type:"regular",id:0}