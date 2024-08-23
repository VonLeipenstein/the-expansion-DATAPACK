particle minecraft:dust{color:[1d,0d,0d],scale:2} ~ ~ ~ 0.5 0.5 0.5 5 50 force
particle explosion ~ ~ ~ 0 0 0 0 5 force
execute as @e[type=#expansion:sentient,distance=..4] run damage @s 4 expansion:spaceship_blaster
kill @s