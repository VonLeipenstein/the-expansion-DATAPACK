# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/disable_node
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/planetarium/disabled_branch (1 caller) [OK same-folder]
# - function expansion:blocks/planetarium/remove_root_display (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s add exp.disabled_node

# make the size zero
scoreboard players set #temp exp.size 0
function expansion:blocks/planetarium/set_size

# for effects
data merge entity @s {transformation:{scale:[0.0f,0.0f,0.0f]},interpolation_duration:7,start_interpolation:1}

# reset text display
execute on passengers run data merge entity @s[tag=exp.planetarium_text_display] {transformation:{scale:[0.0f,0.0f,0.0f]},interpolation_duration:7,start_interpolation:1}
execute on passengers run data merge entity @s[tag=exp.planetarium_infoboard] {background:0,transformation:{scale:[0.0f,0.0f,0.0f]},interpolation_duration:0,start_interpolation:1}


