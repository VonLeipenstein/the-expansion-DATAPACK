# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/markers/marker_switcher
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/spaceship/click_detection/leftclick (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

execute unless entity @s[tag=exp.has_active_markers] run return run function expansion:vehicles/spaceship/markers/activate_markers
function expansion:vehicles/spaceship/markers/deactivate_markers