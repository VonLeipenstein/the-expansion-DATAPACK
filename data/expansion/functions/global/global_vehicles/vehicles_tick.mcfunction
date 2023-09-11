# ---run from expansion:functions/global/global_player---
execute if entity @s[tag=exp.inside_rocket] run function expansion:vehicles/rocket/main
execute if entity @s[tag=exp.inside_spaceship] run function expansion:vehicles/spaceship/main
execute if entity @s[tag=exp.inside_buggy] run function expansion:vehicles/buggy/main
execute if entity @s[tag=exp.inside_module] run function expansion:vehicles/lunar_module/main
execute if entity @s[tag=exp.inside_capsule] run function expansion:vehicles/return_capsule/main
execute if entity @s[tag=exp.inside_mech] run function expansion:vehicles/mech/main
