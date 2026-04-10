# >>> generated function callers >>>
# Callers for expansion:blocks/terraformer/buttons/cube_button_push
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/terraformer/player_nearby (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players add @s exp.counter_1 1
execute if score @s exp.counter_1 matches 2 run scoreboard players set @s exp.counter_1 0
item replace block ~ ~ ~ container.5 with minecraft:air
function expansion:utilities/sounds/button