# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/gui/buttons/toggle_cube
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/player_nearby (1 caller) [OK above +2]
# <<< generated function callers <<<

function expansion:utilities/sounds/button

execute if entity @s[tag=exp.displaying_frame] run return run function expansion:blocks/oxygenator/gui/frame/hide
execute unless entity @s[tag=exp.displaying_frame] run function expansion:blocks/oxygenator/gui/frame/show