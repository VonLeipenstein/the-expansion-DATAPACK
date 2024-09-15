scoreboard players operation #search exp.unique_id = @s exp.unique_id

execute unless block ~ ~ ~ minecraft:cobblestone positioned ~ ~2.5 ~ run function expansion:blocks/planetarium/destroy

execute if entity @p[distance=..50] on passengers run function expansion:blocks/planetarium/spin/main

execute if entity @p[distance=..50] as @e[type=item_display,tag=exp.planetarium_comet,predicate=expansion:compare_score/unique_id] run function expansion:blocks/planetarium/spin/comets
