# summon a lunar module if this function hasn't been run before
tag @s remove exp.landing_moon_init
execute if entity @s[tag=!exp.summoned_new_module,tag=exp.rocket_pilot] at @s if loaded ~ ~ ~ run function expansion:vehicles/lunar_module/summon_new

# apply levitation so the player doesn't fall in case of lag
effect give @s[tag=!exp.trying_transition] minecraft:levitation 1000 255 true
effect give @s[tag=!exp.trying_transition] minecraft:blindness 1000 255 true

# apply a tag so some things in this function only run once
tag @s[tag=exp.rocket_pilot] add exp.trying_transition

# attempt to enter the lunar module
ride @s mount @e[type=minecraft:camel,tag=exp.module_seats,limit=1,sort=nearest]

# remove effects/tags and finish the transition
execute if entity @s[predicate=expansion:nbt_checks/root_vehicle/lunar_module] run function expansion:global/transitions/moon_earth/moon_success
