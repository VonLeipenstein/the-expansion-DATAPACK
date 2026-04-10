# >>> generated function callers >>>
# Callers for expansion:items/rocket_boots/slow_beep
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/rocket_boots/try_flight (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players set @s[scores={exp.timer_2=7..}] exp.timer_2 0
execute if score @s exp.timer_2 matches 0 run playsound expansion:rboots.beep player @s ~ ~-2 ~
scoreboard players add @s exp.timer_2 1

execute if score @s exp.rboots_cooldown matches 96.. run scoreboard players add @s exp.timer_2 1

execute if score @s exp.rboots_cooldown matches 95 run function expansion:items/rocket_boots/turn_off