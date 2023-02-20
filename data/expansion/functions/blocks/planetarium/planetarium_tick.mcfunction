execute unless block ~ ~ ~ minecraft:spawner positioned ~ ~2.5 ~ run function expansion:blocks/planetarium/destroy
execute if entity @p[distance=..50] as @e[type=armor_stand,tag=exp.planetarium_part] run function expansion:blocks/planetarium/spin
