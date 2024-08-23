# run from the recipes of the assembler
loot replace entity @s weapon.mainhand loot expansion:vehicles/buggy

# copy the used oxygen tank to the buggy
data modify entity @s HandItems[0].components."minecraft:custom_data".ModStorage.oxygen_tank set from block ~ ~ ~ Items[{Slot:12b}]
data remove entity @s HandItems[0].components."minecraft:custom_data".ModStorage.oxygen_tank.Slot