# >>> generated function callers >>>
# Callers for expansion:spacesuits/temperature_damage/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:spacesuits/integrity/check_piece (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# check if the equipment is resistant enough and calculate the damage
execute if score @s exp.temperature matches ..-1 run function expansion:spacesuits/temperature_damage/check_cold
execute if score @s exp.temperature matches 1.. run function expansion:spacesuits/temperature_damage/check_heat