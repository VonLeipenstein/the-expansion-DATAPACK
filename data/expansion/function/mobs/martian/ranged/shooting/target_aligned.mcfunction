# >>> generated function callers >>>
# Callers for expansion:mobs/martian/ranged/shooting/target_aligned
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/martian/ranged/shooting/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players set #temp exp.max_range 100
execute at @s positioned ^ ^ ^1 run return run function expansion:mobs/martian/ranged/shooting/loop
scoreboard players reset #temp exp.max_range