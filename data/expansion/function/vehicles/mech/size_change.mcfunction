# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/size_change
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/inside (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players set @s exp.size 20

execute if score @s exp.size_mod matches 1.. run scoreboard players remove @s exp.size_mod 1
execute if score @s exp.size_mod matches ..-1 run scoreboard players add @s exp.size_mod 1

execute store result entity @s attributes[{id:"minecraft:scale"}].base double 0.05 run scoreboard players operation @s exp.size += @s exp.size_mod

