# summon a lunar module if this function hasn't been run before
tag @s remove exp.landing_earth_init
execute if entity @s[tag=!exp.summoned_new_capsule,tag=exp.module_pilot] at @s if loaded ~ ~ ~ run function expansion:vehicles/return_capsule/summon_new

# apply levitation so the player doesn't fall in case of lag
effect give @s[tag=!exp.trying_transition] minecraft:levitation 1000 255 true
effect give @s[tag=!exp.trying_transition] minecraft:blindness 1000 255 true

# apply a tag so some things in this function only run once
tag @s[tag=exp.module_pilot] add exp.trying_transition

# attempt to enter the lunar module
ride @s mount @e[type=minecraft:armor_stand,tag=exp.return_capsule,limit=1,sort=nearest]

# remove effects/tags and finish the transition
execute if entity @s[predicate=expansion:nbt_checks/root_vehicle/return_capsule] run function expansion:global/transitions/moon_earth/earth_success