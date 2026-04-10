# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/spin/set_display_distance
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/planetarium/spin/enabled_branch (1 caller) [OK same-folder]
# - function expansion:blocks/planetarium/spin/set_display_distance (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players remove #temp exp.distance 100

execute if score #temp exp.distance matches 0.. positioned ^ ^ ^1 run return run function expansion:blocks/planetarium/spin/set_display_distance

tp @s ^ ^ ^