# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# destroy the block if the barrel is destroyed
execute unless block ~ ~ ~ minecraft:barrel run function expansion:blocks/fabricator/destroy

# run some functions when a player is within interaction range
execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/fabricator/player_nearby

# run when printing
execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/fabricator/printing/main
