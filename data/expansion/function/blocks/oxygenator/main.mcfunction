# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/oxygenator/player_nearby

# main scanning logic
execute unless score @s exp.cooldown matches 1.. if score @s exp.timer_1 matches 1.. run function expansion:blocks/oxygenator/oxygenate/scan/main
execute if score @s exp.cooldown matches 1 run function expansion:blocks/oxygenator/oxygenate/scan/init/main
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1

# in and outtake particles
execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/oxygenator/oxygenate/during

# when block is broken
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/oxygenator/destroy