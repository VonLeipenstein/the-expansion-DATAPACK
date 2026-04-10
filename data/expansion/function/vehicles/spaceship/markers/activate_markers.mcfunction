# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/markers/activate_markers
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:solar_system/transitions/to_space/init (1 caller) [WARN side/down 6]
# - function expansion:vehicles/spaceship/markers/marker_switcher (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.planet_marker] run function expansion:vehicles/spaceship/markers/show_marker

execute on passengers if entity @s[tag=exp.planet_marker] run data merge entity @s {transformation:{translation:[0.0,1.0,0.6]},interpolation_duration:5,start_interpolation:-1}

tag @s add exp.has_active_markers