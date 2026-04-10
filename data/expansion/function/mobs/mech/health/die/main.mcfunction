# >>> generated function callers >>>
# Callers for expansion:mobs/mech/health/die/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:mobs/mech/behavior/main (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

function expansion:mobs/mech/health/lightning_explosion

scoreboard players remove @s exp.death 1

execute if score @s exp.death matches 0 run function expansion:mobs/mech/health/die/finish