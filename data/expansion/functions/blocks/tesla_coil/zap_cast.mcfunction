summon marker ~ ~1.75 ~ {Tags:["exp.ray"]}
execute at @s positioned ~ ~2 ~ facing ~ ~3 ~ run tp @e[type=minecraft:marker,tag=exp.ray,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute as @e[type=minecraft:marker,tag=exp.ray,limit=1,sort=nearest] at @s run function expansion:blocks/tesla_coil/zap_loop