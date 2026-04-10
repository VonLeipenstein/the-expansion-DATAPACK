# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/gui/buttons/toggle_air
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/player_nearby (1 caller) [OK above +2]
# <<< generated function callers <<<

function expansion:utilities/sounds/button

execute if entity @s[tag=exp.displaying_air] run return run tag @s remove exp.displaying_air
tag @s add exp.displaying_air