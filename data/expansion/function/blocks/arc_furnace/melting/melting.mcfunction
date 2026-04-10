# >>> generated function callers >>>
# Callers for expansion:blocks/arc_furnace/melting/melting
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/arc_furnace/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute unless score @s exp.timer_1 matches 1.. run scoreboard players set @s exp.timer_1 41
scoreboard players remove @s[scores={exp.timer_1=1..}] exp.timer_1 1

execute if entity @s[tag=exp.smelting] run particle smoke ^ ^1 ^ 0.2 0.2 0.2 0 3
execute if entity @s[tag=exp.smelting] run particle electric_spark ^ ^0.7 ^ 0.2 0.2 0.2 0.3 3

execute if score @s exp.timer_1 matches 40 run function expansion:blocks/arc_furnace/melting/check_output
execute if score @s exp.timer_1 matches 0 run function expansion:blocks/arc_furnace/melting/melt