# >>> generated function callers >>>
# Callers for expansion:blocks/infuser/melting/melting
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/infuser/main (1 caller) [OK above +1]
# <<< generated function callers <<<
execute unless score @s exp.time matches 1.. run scoreboard players set @s exp.time 41
scoreboard players remove @s[scores={exp.time=1..}] exp.time 1

particle minecraft:dust_color_transition{from_color:65522,to_color:16726261,scale:2} ~ ~1 ~ 0.2 0.2 0.2 0 1 force

particle electric_spark ^ ^0.7 ^ 0.2 0.2 0.2 0.3 5

execute if score @s exp.time matches 40 run function expansion:blocks/infuser/melting/check_output
execute if score @s exp.time matches 0 run function expansion:blocks/infuser/melting/melt