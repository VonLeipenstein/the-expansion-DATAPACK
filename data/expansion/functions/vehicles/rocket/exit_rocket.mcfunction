# stop the launching sound and reset the timer
scoreboard players reset @e[type=minecraft:armor_stand,tag=exp.rocket,distance=..7,limit=1,sort=nearest] exp.timer_2
stopsound @s player expansion:rocket.launch

# place the player next to the rocket
execute at @e[type=minecraft:armor_stand,tag=exp.rocket,distance=..7,limit=1,sort=nearest] positioned ^ ^ ^2 if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tp @s ~ ~ ~
tag @s remove exp.inside_rocket
tag @s remove exp.inside_vehicle
tag @s remove exp.launching
tag @s remove exp.rocket_pilot