# stop the launching sound and reset the timer
scoreboard players reset @n[type=minecraft:armor_stand,tag=exp.rocket,distance=..7] exp.timer_2
stopsound @s player expansion:rocket.launch

# restore the interaction so players can enter and break it again
execute if entity @s[tag=exp.rocket_pilot] as @n[type=minecraft:armor_stand,tag=exp.rocket,distance=..7] on passengers if entity @s[tag=exp.rocket_button_rcdet] run tag @s add exp.rocket_pilot_rcdet

# place the player next to the rocket
execute at @s at @n[type=minecraft:armor_stand,tag=exp.rocket,distance=..7] positioned ^ ^ ^2 if block ~ ~ ~ #expansion:air if block ~ ~1 ~ #expansion:air run tp @s ~ ~ ~
tag @s remove exp.inside_rocket
tag @s remove exp.inside_vehicle
tag @s remove exp.launching
tag @s remove exp.rocket_pilot