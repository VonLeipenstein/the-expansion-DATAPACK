# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/markers/hide_marker
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:vehicles/spaceship/markers/deactivate_markers (1 caller) [OK same-folder]
# - function expansion:vehicles/spaceship/markers/markers (1 caller) [OK same-folder]
# <<< generated function callers <<<

data merge entity @s {transformation:{scale:[0.0,0.0,0.0]},interpolation_duration:5,start_interpolation:-1}

execute on passengers run data merge entity @s {transformation:{scale:[0,0,0]},interpolation_duration:5,start_interpolation:-1}

tag @s remove exp.highlighted_marker
