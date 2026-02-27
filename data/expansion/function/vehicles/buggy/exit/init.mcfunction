execute as @n[type=armor_stand,tag=exp.moon_buggy,predicate=!expansion:passengers/player] run function expansion:vehicles/buggy/exit/main
tag @s remove exp.inside_buggy
tag @s remove exp.inside_vehicle