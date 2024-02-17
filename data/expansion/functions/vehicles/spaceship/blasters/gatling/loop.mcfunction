tp @s ^ ^ ^3

particle dust 1 0 0 1 ^ ^ ^1 0 0 0 5 1 force
particle dust 1 0 0 1 ^ ^ ^ 0 0 0 5 1 force
particle dust 1 0 0 1 ^ ^ ^-1 0 0 0 5 1 force

damage @e[type=#expansion:sentient,distance=..1.5,limit=1,sort=nearest] 8 expansion:spaceship_blaster

execute unless block ~ ~ ~ #expansion:air run function expansion:vehicles/spaceship/blasters/gatling/hit

scoreboard players add @s exp.max_range 1
execute if score @s exp.max_range matches 60 run kill @s
