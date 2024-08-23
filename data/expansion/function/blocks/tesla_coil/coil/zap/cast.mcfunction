summon minecraft:marker ~ ~1.75 ~ {Tags:["exp.zap"]}
execute at @s positioned ~ ~2 ~ facing ~ ~3 ~ run tp @e[type=minecraft:marker,tag=exp.zap,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute as @e[type=minecraft:marker,tag=exp.zap,limit=1,sort=nearest] at @s run function expansion:blocks/tesla_coil/coil/zap/loop
kill @e[type=minecraft:marker,tag=exp.zap,limit=1,sort=nearest]

function expansion:blocks/tesla_coil/coil/zap/sound