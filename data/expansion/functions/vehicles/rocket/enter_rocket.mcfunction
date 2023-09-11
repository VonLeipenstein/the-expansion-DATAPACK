tag @s add exp.inside_rocket
tag @s add exp.inside_vehicle

execute if entity @s[tag=exp.has_active_drone] run function expansion:items/drone_pet/force_dismiss

# swap the rightclick villager with the rocket_seat armor stand and mount the player on top of that
kill @e[type=minecraft:interaction,tag=exp.rocket_rcdet,limit=1,sort=nearest]
execute at @e[type=minecraft:item_display,tag=exp.rocket_display,limit=1,sort=nearest] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Invulnerable:1b,Tags:["exp.rocket_seat"]}
ride @e[type=minecraft:armor_stand,tag=exp.rocket_seat,limit=1,sort=nearest] mount @e[type=minecraft:item_display,tag=exp.rocket_display,limit=1,sort=nearest]
ride @s mount @e[type=minecraft:armor_stand,tag=exp.rocket_seat,limit=1,sort=nearest]