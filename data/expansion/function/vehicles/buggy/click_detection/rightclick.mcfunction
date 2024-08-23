tag @s add exp.interacting_buggy

execute unless predicate expansion:utility/sneak unless predicate expansion:nbt_checks/selected_item/items/oxygen_tank as @n[type=minecraft:armor_stand,tag=exp.moon_buggy] unless entity @s[tag=exp.has_passenger] run function expansion:vehicles/buggy/enter

execute at @s unless predicate expansion:utility/sneak if predicate expansion:nbt_checks/selected_item/items/oxygen_tank as @n[type=minecraft:armor_stand,tag=exp.moon_buggy] if score @s exp.oxygen_lvl matches 1.. run function expansion:mechanics/oxygen/fill_tank_from_buggy

advancement revoke @s only expansion:utility/buggy_rc
tag @s remove exp.interacting_buggy
