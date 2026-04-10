# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/gui/buttons/toggle_scan
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/player_nearby (1 caller) [OK above +2]
# <<< generated function callers <<<

function expansion:utilities/sounds/button

# Stop the scan if one is already going on
execute if score @s exp.timer_1 matches 1.. run return run tag @s add exp.depressurize

# Start the scan
# this is also the max scan time before a failure
function expansion:blocks/oxygenator/oxygenate/scan/init/main
