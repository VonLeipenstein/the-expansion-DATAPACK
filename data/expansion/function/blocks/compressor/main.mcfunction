execute unless entity @s[tag=exp.compressor.new] unless predicate expansion:blocks/compressor/has_aj_model run function expansion:blocks/compressor/repair_model
execute unless block ~ ~ ~ minecraft:cobblestone run function expansion:blocks/compressor/destroy

execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/compressor/compress/main
