# stop the coil
execute if block ~ ~1 ~ minecraft:redstone_torch[lit=true] run function expansion:blocks/tesla_coil/stop_coil

# charge sound
# execute if score @s exp.cooldown matches 21 if entity @e[type=#expansion:turret_target,tag=!smithed.block,distance=0.5..10,limit=1,sort=nearest] run playsound expansion:teslacoil.charge block @a ~ ~ ~ 0.3 1

# initiate shooting an entity
execute unless score @s exp.cooldown matches 1.. run function expansion:blocks/tesla_coil/zap_ready

# remove cooldown
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1
