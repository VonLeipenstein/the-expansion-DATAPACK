tp @s ^ ^ ^2

particle minecraft:dust{color:[0.000d,0.969d,1.000d],scale:1} ^ ^ ^1 0 0 0 5 1 force
particle minecraft:dust{color:[0.000d,0.969d,1.000d],scale:1} ^ ^ ^ 0 0 0 5 1 force
particle minecraft:dust{color:[0.000d,0.969d,1.000d],scale:1} ^ ^ ^-1 0 0 0 5 1 force

damage @e[type=#expansion:sentient,distance=..1.5,limit=1,sort=nearest] 8 expansion:spaceship_blaster

execute unless block ~ ~ ~ #expansion:air run function expansion:vehicles/spaceship/blasters/regular/hit

scoreboard players add @s exp.max_range 1
kill @s[scores={exp.max_range=60}]
