execute unless entity @s[tag=exp.enhancer.new] unless predicate expansion:blocks/enhancer/has_aj_model run function expansion:blocks/enhancer/repair_model
execute unless block ~ ~ ~ minecraft:barrel run function expansion:blocks/enhancer/destroy

execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/enhancer/player_nearby
