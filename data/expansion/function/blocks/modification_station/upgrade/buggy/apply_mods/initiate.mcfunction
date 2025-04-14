# store any upgrades inside the armor stands head item and check if there is any, don't overwrite existing upgrades
data remove storage expansion:temp ModStorage
execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run data modify storage expansion:temp ModStorage set from entity @s data.ModStorage

execute if items block ~ ~ ~ container.0 *[custom_data~{exp_item:{name:"speed_upgrade"}}] unless data storage expansion:temp ModStorage.speed_mod.id run data modify entity @s item.components."minecraft:custom_data".ModStorage.speed_mod set from block ~ ~ ~ Items[{Slot:0b}]
execute if items block ~ ~ ~ container.9 *[custom_data~{exp_item:{name:"oxygen_tank"}}] unless data storage expansion:temp ModStorage.oxygen_tank.id run data modify entity @s item.components."minecraft:custom_data".ModStorage.oxygen_tank set from block ~ ~ ~ Items[{Slot:9b}]

scoreboard players reset #temp exp.bool
execute store success score #temp exp.bool if data entity @s item.components."minecraft:custom_data".ModStorage.speed_mod.id run item replace block ~ ~ ~ container.0 with minecraft:air
execute store success score #temp exp.bool if data entity @s item.components."minecraft:custom_data".ModStorage.oxygen_tank.id run item replace block ~ ~ ~ container.9 with minecraft:air

data remove storage expansion:temp ModStorage