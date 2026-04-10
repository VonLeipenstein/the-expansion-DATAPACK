# >>> generated function callers >>>
# Callers for expansion:solar_system/transitions/from_space/to_europa/finish
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:solar_system/transitions/from_space/to_europa/prepare (1 caller) [OK same-folder]
# <<< generated function callers <<<

data modify entity @s Pos set from storage expansion:return_pos data.ReturnPos

execute at @s as @a[tag=exp.tick_player] on vehicle on vehicle in expansion:europa run tp @s ~ 300 ~ ~ 35

data remove storage expansion:return_pos data.ReturnPos

kill @s