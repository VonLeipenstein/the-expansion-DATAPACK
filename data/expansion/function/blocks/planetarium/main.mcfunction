scoreboard players operation #search exp.unique_id = @s exp.unique_id

execute unless block ~ ~ ~ minecraft:cobblestone positioned ~ ~2.5 ~ run function expansion:blocks/planetarium/destroy

execute if entity @p[distance=..50] on passengers run function expansion:blocks/planetarium/spin/main