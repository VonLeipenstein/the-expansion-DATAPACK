# destroy the block if the barrel is destroyed
execute unless entity @s[tag=exp.fabricator.new] unless predicate expansion:blocks/fabricator/has_aj_model run function expansion:blocks/fabricator/repair_model
execute unless block ~ ~ ~ minecraft:barrel run function expansion:blocks/fabricator/destroy

# run some functions when a player is within interaction range
execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/fabricator/player_nearby

# run when printing
execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/fabricator/printing/main
