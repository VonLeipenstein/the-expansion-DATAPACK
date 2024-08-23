# ---run from expansion:functions/global/global_player---

# rocket tick
execute if entity @s[tag=exp.inside_rocket] run function expansion:vehicles/rocket/main

# spaceship tick
execute if entity @s[tag=exp.inside_spaceship] run function expansion:vehicles/spaceship/main

# buggy tick
execute if entity @s[tag=exp.inside_buggy] run function expansion:vehicles/buggy/main

# lunar module tick
execute if entity @s[tag=exp.inside_module] run function expansion:vehicles/lunar_module/main

# return capsule tick
execute if entity @s[tag=exp.inside_capsule] run function expansion:vehicles/return_capsule/main

# mech tick
execute if entity @s[tag=exp.inside_mech] run function expansion:vehicles/mech/main
