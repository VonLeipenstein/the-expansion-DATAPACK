# store any upgrades inside the armor stands head item and check if there is any, don't overwrite existing upgrades
data remove storage expansion:temp ModStorage
execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run data modify storage expansion:temp ModStorage set from entity @s data.ModStorage

## upgrades
# if there is an item in slot 9, and there is no data in the lefthand id, add the item to the lefthand
execute if items block ~ ~ ~ container.9 *[custom_data~{hand_mod:1b}] unless data storage expansion:temp ModStorage.lefthand.id run data modify entity @s item.components."minecraft:custom_data".ModStorage.lefthand set from block ~ ~ ~ Items[{Slot:9b}]
# if there is an item in slot 14, and there is no data in the righthand id, add the item to the righthand
execute if items block ~ ~ ~ container.14 *[custom_data~{hand_mod:1b}] unless data storage expansion:temp ModStorage.righthand.id run data modify entity @s item.components."minecraft:custom_data".ModStorage.righthand set from block ~ ~ ~ Items[{Slot:14b}]

scoreboard players reset #temp exp.bool
execute store success score #temp exp.bool if data entity @s item.components."minecraft:custom_data".ModStorage.lefthand.id run item replace block ~ ~ ~ container.9 with minecraft:air
execute store success score #temp exp.bool if data entity @s item.components."minecraft:custom_data".ModStorage.righthand.id run item replace block ~ ~ ~ container.14 with minecraft:air

data remove storage expansion:temp ModStorage
