# set the new oxygen percentage
scoreboard players operation @s exp.oxygen_percent = #output exp.oxygen_percent

# merge the new oxygen value with the equipments data and lore, unless there is no tank
execute unless score @s exp.oxygen_max matches ..0 store result storage expansion:oxygen_calc data.oxygen_lvl int 1 run scoreboard players get @s exp.oxygen_lvl
execute unless score @s exp.oxygen_max matches ..0 store result score #temp exp.hold_value run data get entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".ModStorage.oxygen_tank.components.minecraft:custom_data.tier
execute unless score @s exp.oxygen_max matches ..0 run scoreboard players operation #temp exp.oxygen_percent = #output exp.oxygen_percent
execute unless score @s exp.oxygen_max matches ..0 run item modify entity @s armor.head expansion:oxygen_tank/merge_with_equipment

scoreboard players reset #temp exp.oxygen_percent
scoreboard players reset #output exp.oxygen_percent