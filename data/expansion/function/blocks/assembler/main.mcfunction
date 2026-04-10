# >>> generated function callers >>>
# Callers for expansion:blocks/assembler/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute unless block ~ ~ ~ minecraft:barrel run function expansion:blocks/assembler/destroy

execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/assembler/interaction

execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/assembler/assembling