# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/movement/standing/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/mech/behavior/movement/main (1 caller) [OK above +1]
# <<< generated function callers <<<

## STATE RULES
scoreboard players set @s exp.warmup 0

## SWITCH CONDITIONS
execute if predicate expansion:periodic/10 unless score @s exp.delay matches 1.. run function expansion:mobs/mech/behavior/movement/standing/switch_rules