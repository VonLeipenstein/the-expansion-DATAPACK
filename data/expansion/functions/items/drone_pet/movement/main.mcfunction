execute unless entity @s[tag=exp.searching_structure] rotated ~ 0 positioned ^1 ^2 ^-1 run function expansion:items/drone_pet/movement/idle

execute if entity @s[tag=exp.searching_structure] run function expansion:items/drone_pet/structure_scan/main
