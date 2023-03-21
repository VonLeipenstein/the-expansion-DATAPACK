tp @s ^ ^ ^0.20

# particles
particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.2 1 force
particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force

scoreboard players add @s exp.max_range 1

# create random electricity effect
execute facing entity @e[tag=exp.zap_target,distance=..10,limit=1,sort=nearest] eyes run function expansion:blocks/tesla_coil/bend_lightning

# add a tag to recognise if the entity has actually been hit by the lightning
tag @e[tag=exp.zap_target,distance=..2.1,limit=1,sort=nearest] add exp.zapped

# run this function again if the conditions are met
execute if entity @s[scores={exp.max_range=..200}] unless entity @e[tag=exp.zapped,distance=..2.1,limit=1,sort=arbitrary] at @s if block ^ ^ ^0.25 #expansion:expansion_air run function expansion:blocks/tesla_coil/zap_loop