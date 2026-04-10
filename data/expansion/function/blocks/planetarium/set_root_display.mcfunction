# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/set_root_display
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/planetarium/set_root (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s add exp.root_display

# enlarge text display
data merge entity @s {transformation:{scale:[3.5f,3.5f,3.5f],translation:[0.0f,0.0f,0.0f]},interpolation_duration:7,start_interpolation:1}

execute on passengers run data merge entity @s[tag=exp.planetarium_text_display] {background:0,transformation:{scale:[2f,2f,2f],translation:[0f,0.5f,0f]},interpolation_duration:7,start_interpolation:1}
execute on passengers run data merge entity @s[tag=exp.planetarium_infoboard] {background:0,transformation:{scale:[0.55f,0.55f,0.55f]},interpolation_duration:7,start_interpolation:1}

execute on passengers run data merge entity @s[type=interaction] {width:1.75, height:-1.75}