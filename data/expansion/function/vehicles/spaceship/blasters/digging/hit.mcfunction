execute unless block ~ ~ ~ #expansion:inexplodable run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy

execute as @e[type=item,distance=..3,limit=1,sort=nearest] run function expansion:vehicles/spaceship/blasters/digging/tp_item
particle minecraft:dust{color:[0d,1d,0.016d],scale:2} ~ ~ ~ 0.5 0.5 0.5 5 50 force
kill @s