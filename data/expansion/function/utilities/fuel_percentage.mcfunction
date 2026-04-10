# >>> generated function callers >>>
# Callers for expansion:utilities/fuel_percentage
# Total callers: 4 from 4 source(s)
# Folder rule (function callers): 0/4 honored
# Sources:
# - function expansion:vehicles/rocket/text_display (1 caller) [WARN side/down 3]
# - function expansion:vehicles/spaceship/enter/pilot (1 caller) [WARN side/down 4]
# - function expansion:vehicles/spaceship/fuel/update_cell (1 caller) [WARN side/down 4]
# - function expansion:vehicles/spaceship/propulsion/fly (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

scoreboard players operation @s exp.hold_value = @s exp.fuel_level
scoreboard players operation @s exp.hold_value *= #100 exp.const
execute store result score @s exp.fuel_percentage run scoreboard players operation @s exp.hold_value /= @s exp.fuel_max