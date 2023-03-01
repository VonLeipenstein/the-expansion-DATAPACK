# stop the coil
execute if block ~ ~1 ~ minecraft:redstone_torch[lit=true] run function expansion:blocks/tesla_coil/stop_coil

# initiate shooting an entity
execute unless score @s exp.cooldown matches 1.. run function expansion:blocks/tesla_coil/zap_ready

# remove cooldown
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1
