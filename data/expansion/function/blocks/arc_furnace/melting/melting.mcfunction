execute unless score @s exp.timer_1 matches 1.. run scoreboard players set @s exp.timer_1 41
scoreboard players remove @s[scores={exp.timer_1=1..}] exp.timer_1 1

execute if entity @s[tag=exp.smelting] run particle smoke ^ ^1 ^ 0.2 0.2 0.2 0 3
execute if entity @s[tag=exp.smelting] run particle electric_spark ^ ^0.7 ^ 0.2 0.2 0.2 0.3 3

execute if score @s exp.timer_1 matches 40 run function expansion:blocks/arc_furnace/melting/check_output
execute if score @s exp.timer_1 matches 0 run function expansion:blocks/arc_furnace/melting/melt