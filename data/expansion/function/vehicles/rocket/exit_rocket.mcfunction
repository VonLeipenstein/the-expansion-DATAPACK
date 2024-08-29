# stop the launching sound and reset the timer
scoreboard players reset @e[type=minecraft:armor_stand,tag=exp.rocket,distance=..7,limit=1,sort=nearest] exp.timer_2
stopsound @s player expansion:rocket.launch

# restore the interaction
execute if entity @s[tag=exp.rocket_pilot] as @e[type=minecraft:armor_stand,tag=exp.rocket,distance=..7,limit=1,sort=nearest] on passengers on passengers if entity @s[tag=exp.rocket_pilot_rcdet] run data merge entity @s {width:2f,height:2f}

# place the player next to the rocket
execute at @s at @e[type=minecraft:armor_stand,tag=exp.rocket,distance=..7,limit=1,sort=nearest] positioned ^ ^ ^2 if block ~ ~ ~ #expansion:air if block ~ ~1 ~ #expansion:air run tp @s ~ ~ ~
tag @s remove exp.inside_rocket
tag @s remove exp.inside_vehicle
tag @s remove exp.launching
tag @s remove exp.rocket_pilot