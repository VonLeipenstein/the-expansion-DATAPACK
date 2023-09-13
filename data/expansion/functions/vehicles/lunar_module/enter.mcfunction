tag @s add exp.inside_module
tag @s add exp.inside_vehicle
#tag @s remove exp.inside_rocket

execute if entity @s[tag=exp.has_active_drone] run function expansion:items/drone_pet/force_dismiss

# swap the rightclick villager with the module_seat armor stand and mount the player on top of that
ride @s mount @e[type=minecraft:armor_stand,tag=exp.module_seat,distance=..7,limit=1,sort=nearest]