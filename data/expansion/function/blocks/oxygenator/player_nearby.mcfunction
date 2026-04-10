# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/player_nearby
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute unless items block ~ ~ ~ container.0 * run function expansion:blocks/oxygenator/gui/buttons/toggle_air
execute unless items block ~ ~ ~ container.1 * if predicate expansion:dimension/oxygen_absent run function expansion:blocks/oxygenator/gui/buttons/toggle_scan
execute unless items block ~ ~ ~ container.2 * run function expansion:blocks/oxygenator/gui/buttons/toggle_cube

function expansion:blocks/oxygenator/gui/main