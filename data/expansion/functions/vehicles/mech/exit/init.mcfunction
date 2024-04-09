tag @s add exp.exit_mech
execute as @e[type=minecraft:wandering_trader,tag=exp.mech,limit=1,sort=nearest] run function expansion:vehicles/mech/exit/exit
tag @s remove exp.exit_mech