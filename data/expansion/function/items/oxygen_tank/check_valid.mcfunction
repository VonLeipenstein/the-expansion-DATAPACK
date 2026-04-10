# >>> generated function callers >>>
# Callers for expansion:items/oxygen_tank/check_valid
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/oxygen_tank/use (1 caller) [OK same-folder]
# <<< generated function callers <<<

# fill the equipments oxygen supply if the tank has oxygen and if the equipment needs oxygen/unless it doesnt have a tank, in which case the oxygen_max is 0
execute unless score #source exp.oxygen_lvl matches 1.. run return fail

execute if score @s exp.oxygen_max matches 0 run return fail

#execute if score @s exp.oxygen_lvl = @s exp.oxygen_max run return fail

return 1