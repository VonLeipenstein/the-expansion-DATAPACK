# >>> generated function callers >>>
# Callers for expansion:blocks/determine_rotation
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/rightclick/placement (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

scoreboard players reset #temp exp.yaw
execute if entity @s[y_rotation=135..-135] run scoreboard players set #temp exp.yaw 0
execute if entity @s[y_rotation=-135..-45] run scoreboard players set #temp exp.yaw 90
execute if entity @s[y_rotation=-45..45] run scoreboard players set #temp exp.yaw 180
execute if entity @s[y_rotation=45..135] run scoreboard players set #temp exp.yaw -90