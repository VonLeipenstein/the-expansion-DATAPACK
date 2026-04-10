# >>> generated function callers >>>
# Callers for expansion:items/rocket_boots/try_flight
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/rocket_boots/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute unless score @s exp.rboots_cooldown matches 120.. run scoreboard players add @s exp.rboots_cooldown 1

execute if score @s exp.rboots_cooldown matches ..95 run function expansion:items/rocket_boots/ascend

execute if score @s exp.rboots_cooldown matches 75.. run function expansion:items/rocket_boots/slow_beep

tag @s add exp.boosting
