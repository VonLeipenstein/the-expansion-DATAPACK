tag @s add exp.inside_module
tag @s add exp.inside_vehicle
#tag @s remove exp.inside_rocket

execute if entity @s[tag=exp.has_active_drone] run function expansion:items/drone_pet/dismiss

# swap the rightclick villager with the module_seat armor stand and mount the player on top of that
kill @e[type=minecraft:interaction,tag=exp.module_rcdet,distance=..7,limit=1,sort=nearest]
execute at @e[type=minecraft:armor_stand,tag=exp.lunar_module,distance=..7,limit=1,sort=nearest] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Invulnerable:1b,Tags:["exp.module_seat"]}
ride @e[type=minecraft:armor_stand,tag=exp.module_seat,distance=..7,limit=1,sort=nearest] mount @e[type=minecraft:item_display,tag=exp.module_display,distance=..7,limit=1,sort=nearest]
ride @s mount @e[type=minecraft:armor_stand,tag=exp.module_seat,distance=..7,limit=1,sort=nearest]