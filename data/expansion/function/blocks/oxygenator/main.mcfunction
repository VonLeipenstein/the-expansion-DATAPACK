execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/oxygenator/player_nearby

# main scanning logic
execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/oxygenator/oxygenate/scan/main

# when block is broken
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/oxygenator/destroy