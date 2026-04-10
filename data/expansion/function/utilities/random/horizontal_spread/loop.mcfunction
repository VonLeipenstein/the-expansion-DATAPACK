# >>> generated function callers >>>
# Callers for expansion:utilities/random/horizontal_spread/loop
# Total callers: 3 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:utilities/random/horizontal_spread/init (2 callers) [OK same-folder]
# - function expansion:utilities/random/horizontal_spread/loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if score #temp exp.math matches 1.. positioned as @s run tp @s ^ ^ ^.1
execute if score #temp exp.math matches ..-1 positioned as @s run tp @s ^ ^ ^-.1

execute if score #temp exp.math matches 1.. run scoreboard players remove #temp exp.math 1
execute if score #temp exp.math matches ..-1 run scoreboard players add #temp exp.math 1

execute unless score #temp exp.math matches 0 run function expansion:utilities/random/horizontal_spread/loop