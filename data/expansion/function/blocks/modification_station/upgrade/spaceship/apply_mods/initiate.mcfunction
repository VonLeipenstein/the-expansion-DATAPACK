# copy the data from the ship display to a storage to avoid selectors
data remove storage expansion:temp ModStorage
execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin on passengers if entity @s[tag=exp.spaceship_display] run data modify storage expansion:temp ModStorage set from entity @s item.components."minecraft:custom_data".ModStorage

# store any upgrades inside the displays item and check if there is any
execute if items block ~ ~ ~ container.0 *[custom_data~{fuel_mod:1b}] unless data storage expansion:temp ModStorage.fuel.id run data modify entity @s item.components."minecraft:custom_data".ModStorage.fuel set from block ~ ~ ~ Items[{Slot:0b}]
execute if items block ~ ~ ~ container.9 *[custom_data~{blaster_mod:1b}] unless data storage expansion:temp ModStorage.blaster.id run data modify entity @s item.components."minecraft:custom_data".ModStorage.blaster set from block ~ ~ ~ Items[{Slot:9b}]
execute if items block ~ ~ ~ container.18 *[custom_data~{exp_item:{name:"speed_upgrade"}}] unless data storage expansion:temp ModStorage.speed.id run data modify entity @s item.components."minecraft:custom_data".ModStorage.speed set from block ~ ~ ~ Items[{Slot:18b}]
execute if items block ~ ~ ~ container.5 *[custom_data~{spaceship_skin:1b}] unless data storage expansion:temp ModStorage.skin.id run function expansion:blocks/modification_station/upgrade/spaceship/apply_mods/store_skin_cmd

# check which data got successfully copied over and remove the respective items
scoreboard players reset #temp exp.bool
execute store success score #temp exp.bool if data entity @s item.components."minecraft:custom_data".ModStorage.fuel.id run item replace block ~ ~ ~ container.0 with minecraft:air
execute store success score #temp exp.bool if data entity @s item.components."minecraft:custom_data".ModStorage.blaster.id run item replace block ~ ~ ~ container.9 with minecraft:air
execute store success score #temp exp.bool if data entity @s item.components."minecraft:custom_data".ModStorage.speed.id run item replace block ~ ~ ~ container.18 with minecraft:air
execute store success score #temp exp.bool if data entity @s item.components."minecraft:custom_data".ModStorage.skin.id run item replace block ~ ~ ~ container.5 with minecraft:air

# reset the data storage
data remove storage expansion:temp ModStorage