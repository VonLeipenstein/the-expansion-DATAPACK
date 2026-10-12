# >>> generated function callers >>>
# Callers for expansion:blocks/voltameter/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# destroy the voltameter
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/voltameter/destroy

# electrolysis
execute unless score @s exp.timer_1 matches 1.. if function expansion:blocks/voltameter/produce/should_fill run function expansion:blocks/voltameter/produce/init
execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/voltameter/produce/main

# gui functions
execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/voltameter/gui