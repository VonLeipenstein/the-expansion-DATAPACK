# >>> generated function callers >>>
# Callers for expansion:items/arc_thrower/target
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/arc_thrower/cast (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players set #temp exp.max_range 12
scoreboard players set #temp exp.cooldown 2

execute summon marker run function expansion:utilities/raycast/target/loop

scoreboard players reset #temp exp.cooldown
scoreboard players reset #temp exp.max_range