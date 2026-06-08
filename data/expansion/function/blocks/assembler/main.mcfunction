execute unless entity @s[tag=exp.assembler.new] unless predicate expansion:blocks/assembler/has_aj_model run function expansion:blocks/assembler/repair_model
execute unless block ~ ~ ~ minecraft:barrel run function expansion:blocks/assembler/destroy

execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/assembler/interaction

execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/assembler/assembling
