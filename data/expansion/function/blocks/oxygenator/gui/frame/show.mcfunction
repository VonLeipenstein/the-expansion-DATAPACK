# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/gui/frame/show
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/oxygenator/gui/buttons/toggle_cube (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

tag @s add exp.displaying_frame

execute on passengers if entity @s[tag=exp.wireframe_display] run data merge entity @s {transformation:{scale:[19.99,19.99,19.99]},interpolation_duration:5,start_interpolation:-1}