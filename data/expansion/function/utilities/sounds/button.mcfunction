# >>> generated function callers >>>
# Callers for expansion:utilities/sounds/button
# Total callers: 13 from 13 source(s)
# Folder rule (function callers): 0/13 honored
# Sources:
# - function expansion:blocks/assembler/button_push (1 caller) [WARN side/down 4]
# - function expansion:blocks/enhancer/gui/buttons/enhance (1 caller) [WARN side/down 6]
# - function expansion:blocks/enhancer/gui/buttons/remove (1 caller) [WARN side/down 6]
# - function expansion:blocks/enhancer/gui/buttons/repair (1 caller) [WARN side/down 6]
# - function expansion:blocks/fabricator/gui/button_push (1 caller) [WARN side/down 5]
# - function expansion:blocks/modification_station/gui/buttons/remove_button (1 caller) [WARN side/down 6]
# - function expansion:blocks/modification_station/gui/buttons/upgrade_button (1 caller) [WARN side/down 6]
# - function expansion:blocks/oxygenator/gui/buttons/toggle_air (1 caller) [WARN side/down 6]
# - function expansion:blocks/oxygenator/gui/buttons/toggle_cube (1 caller) [WARN side/down 6]
# - function expansion:blocks/oxygenator/gui/buttons/toggle_scan (1 caller) [WARN side/down 6]
# - function expansion:blocks/terraformer/buttons/cube_button_push (1 caller) [WARN side/down 5]
# - function expansion:blocks/terraformer/buttons/particle_button_push (1 caller) [WARN side/down 5]
# - function expansion:blocks/terraformer/buttons/tree_button_push (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

execute if block ~ ~ ~ barrel if entity @s[tag=exp.barrel_open] run return run playsound expansion:gui.button_click block @p
playsound expansion:gui.button_click block @p