# >>> generated function callers >>>
# Callers for expansion:blocks/infuser/melting/melting
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/infuser/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute unless score @s exp.time matches 1.. run scoreboard players set @s exp.time 41
scoreboard players remove @s[scores={exp.time=1..}] exp.time 1

execute if entity @s[tag=exp.smelting] run particle smoke ^ ^1 ^ 0.2 0.2 0.2 0 3
execute if entity @s[tag=exp.smelting] run particle electric_spark ^ ^0.7 ^ 0.2 0.2 0.2 0.3 3

execute if score @s exp.time matches 40 run function expansion:blocks/infuser/melting/check_output
execute if score @s exp.time matches 0 run function expansion:blocks/infuser/melting/melt