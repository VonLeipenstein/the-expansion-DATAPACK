execute rotated as @e[type=minecraft:item_display,tag=aj.mech_torso.root,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~

ride @s mount @e[type=minecraft:cat,tag=exp.mech_seat,limit=1,sort=nearest]

execute on vehicle on vehicle on vehicle run tag @s remove exp.mod_vehicle
execute on vehicle on vehicle on vehicle run data merge entity @s {NoAI:0b}

tag @s add exp.inside_mech
tag @s add exp.inside_vehicle
tag @s add exp.mech_pilot