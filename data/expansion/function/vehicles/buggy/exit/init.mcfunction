tag @s add exp.exits_buggy
execute as @n[type=armor_stand,tag=exp.moon_buggy,tag=exp.has_passenger,predicate=!expansion:passengers/player] run function expansion:vehicles/buggy/exit/main
tag @s remove exp.inside_buggy
tag @s remove exp.inside_vehicle
tag @s remove exp.exits_buggy