execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/oxygenator/player_nearby

# main scanning logic
execute if score @s exp.timer_1 matches 1.. unless score @s exp.cooldown matches 1.. run function expansion:blocks/oxygenator/oxygenate/scan/main
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1

# in and outtake particles
execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/oxygenator/particles

# when block is broken
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/oxygenator/destroy