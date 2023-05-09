# ---run from expansion:functions/global/global_player---
execute if entity @s[tag=exp.inside_rocket] run function expansion:vehicles/rocket/rocket_tick
execute if entity @s[tag=exp.inside_spaceship] run function expansion:vehicles/spaceship/spaceship_tick
execute if entity @s[tag=exp.inside_buggy] run function expansion:vehicles/buggy/buggy_tick
execute if entity @s[tag=exp.inside_module] run function expansion:vehicles/lunar_module/lunar_module_tick
execute if entity @s[tag=exp.inside_capsule] run function expansion:vehicles/return_capsule/return_capsule_tick
execute if entity @s[tag=exp.inside_mech] run function expansion:vehicles/mech/mech_tick
