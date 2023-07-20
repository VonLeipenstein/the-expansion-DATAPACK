kill @e[type=minecraft:interaction,tag=exp.mech_rcdet,limit=1,sort=nearest]
execute rotated as @e[type=minecraft:item_display,tag=aj.mech_torso.root,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
ride @s mount @e[type=minecraft:armor_stand,tag=exp.mech_seat,limit=1,sort=nearest]

tag @s add exp.inside_mech
tag @s add exp.inside_vehicle