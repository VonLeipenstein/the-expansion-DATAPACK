# >>> generated function callers >>>
# Callers for expansion:mobs/martian/ranged/shooting/loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:mobs/martian/ranged/shooting/loop (1 caller) [OK same-folder]
# - function expansion:mobs/martian/ranged/shooting/target_aligned (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute on target if entity @s[distance=..3] run return 1

execute unless block ~ ~ ~ #expansion:air run return fail

execute unless score #temp exp.max_range matches 1.. run return fail

execute positioned ^ ^ ^1 run return run function expansion:mobs/martian/ranged/shooting/loop