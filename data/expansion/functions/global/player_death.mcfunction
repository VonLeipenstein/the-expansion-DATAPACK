execute as @s[tag=exp.inside_spaceship] run function expansion:vehicles/spaceship/exits/remove_effects
execute as @s[tag=exp.inside_module] run function expansion:vehicles/lunar_module/exit
execute as @s[tag=exp.inside_rocket] run function expansion:vehicles/rocket/exit_rocket
execute as @s[tag=exp.inside_buggy] run function expansion:vehicles/buggy/exit

scoreboard players set @s exp.death 0