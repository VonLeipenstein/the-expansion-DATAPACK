# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/markers/show_marker
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:vehicles/spaceship/markers/activate_markers (1 caller) [OK same-folder]
# - function expansion:vehicles/spaceship/markers/markers (1 caller) [OK same-folder]
# <<< generated function callers <<<

data merge entity @s {transformation:{scale:[0.1,0.1,0.1]},interpolation_duration:5,start_interpolation:-1}

execute on passengers run data merge entity @s {transformation:{translation:[0.0,0.91,0.6],scale:[-0.1,0.1,-0.1]},text:[{text:"",color: "green"},{score:{name:"@s",objective:"exp.distance"}}],interpolation_duration:5,start_interpolation:-1}

tag @s add exp.highlighted_marker
