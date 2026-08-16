# >>> generated function callers >>>
# Callers for expansion:blocks/infuser/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# destroy the infusion furnace
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/infuser/destroy

execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/infuser/player_nearby

# if the furnace is summoning a lightning bolt
execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/infuser/calling/main

# if the furnace is charged
execute if score @s exp.timer_2 matches 1.. run function expansion:blocks/infuser/charged/main

# gui functions
execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/infuser/gui