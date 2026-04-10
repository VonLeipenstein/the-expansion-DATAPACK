# >>> generated function callers >>>
# Callers for expansion:vehicles/buggy/sound_loop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/buggy/propulsion/drive (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

scoreboard players remove @s exp.timer_2 1
execute unless score @s exp.timer_2 matches 1.. run playsound expansion:buggy.engine_driving player @a ~ ~ ~ 1 1 0
execute unless score @s exp.timer_2 matches 1.. run scoreboard players set @s exp.timer_2 302
