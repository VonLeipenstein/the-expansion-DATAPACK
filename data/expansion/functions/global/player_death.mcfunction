execute if entity @s[tag=exp.inside_spaceship] run function expansion:vehicles/spaceship/exits/exit
execute if entity @s[tag=exp.inside_module] run function expansion:vehicles/lunar_module/exit
execute if entity @s[tag=exp.inside_rocket] run function expansion:vehicles/rocket/exit_rocket
execute if entity @s[tag=exp.inside_buggy] run function expansion:vehicles/buggy/exit
execute if entity @s[tag=exp.has_active_drone] run function expansion:items/drone_pet/dismiss

scoreboard players set @s exp.death 0