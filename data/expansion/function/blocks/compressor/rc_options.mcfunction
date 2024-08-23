advancement revoke @s only expansion:utility/compressor_rc
advancement revoke @s only expansion:utility/compressor_lc

execute if data entity @s SelectedItem.components."minecraft:custom_data".oxygen_lvl run scoreboard players set #temp exp.bool 1
execute if data entity @s SelectedItem.components."minecraft:custom_data".ModStorage.oxygen_tank.components.minecraft:custom_data.oxygen_lvl run scoreboard players set #temp exp.bool 1
execute if predicate expansion:utility/sneak if predicate expansion:nbt_checks/armor/space_equipment/equipment run scoreboard players add #temp exp.bool 2

execute as @e[type=minecraft:item_display,tag=exp.compressor_display,limit=1,sort=nearest] run function expansion:blocks/compressor/tank_swap

scoreboard players reset #temp