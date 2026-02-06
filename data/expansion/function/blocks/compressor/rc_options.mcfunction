advancement revoke @s only expansion:utility/compressor_rc
advancement revoke @s only expansion:utility/compressor_lc

scoreboard players reset #temp exp.bool
execute if data entity @s SelectedItem.components."minecraft:custom_data".oxygen.lvl run scoreboard players set #temp exp.bool 1
execute if predicate expansion:utility/sneak if predicate expansion:nbt_checks/armor/space_equipment/equipment run scoreboard players add #temp exp.bool 2

tag @s add exp.clicked
execute as @n[type=minecraft:interaction,tag=exp.compressor.rcdet,nbt={interaction:{}},distance=..10] if function expansion:utilities/remove_interaction run function expansion:blocks/compressor/tank_swap
execute as @n[type=minecraft:interaction,tag=exp.compressor.rcdet,nbt={attack:{}},distance=..10] if function expansion:utilities/remove_attack run function expansion:blocks/compressor/tank_swap
tag @s remove exp.clicked

scoreboard players reset #temp