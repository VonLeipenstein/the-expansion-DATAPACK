# set a cooldown of 1.5 second
scoreboard players set @s exp.cooldown 40
tag @s add exp.has_zapped

# add zap_target tag to a nearby active turret or entitie
tag @e[type=minecraft:armor_stand,tag=exp.active_coil,distance=0.9..10,limit=1,sort=random] add exp.zap_target
execute unless entity @e[type=minecraft:armor_stand,tag=exp.zap_target,distance=0.9..10,limit=1] run tag @e[type=#expansion:turret_target,tag=!smithed.block,distance=..10,limit=1,sort=nearest] add exp.zap_target

# shoot the zap raycast
function expansion:blocks/tesla_coil/zap_cast

# zap sound
playsound expansion:teslacoil.zap block @a ~ ~ ~ 0.6 1

# damage the entities that have been shocked
execute as @e[tag=exp.zap_target,distance=..10,limit=1,sort=nearest] at @s run function expansion:blocks/tesla_coil/damage