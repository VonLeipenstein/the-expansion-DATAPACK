# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/exit/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/lunar_module/exit/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players reset @s exp.timer_2

scoreboard players remove @s exp.passenger_count 1

execute at @s positioned ^ ^ ^3 if block ~ ~ ~ #expansion:air if block ~ ~1 ~ #expansion:air run tp @p[tag=exp.tick_player] ~ ~ ~