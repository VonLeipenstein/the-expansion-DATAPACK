# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/movement/approaching/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/mech/behavior/movement/main (1 caller) [OK above +1]
# <<< generated function callers <<<

## STATE RULES
scoreboard players set @s exp.yaw 0
scoreboard players set @s exp.warmup 1

# randomly jump if the target is out of range
execute if predicate expansion:periodic/20 if predicate expansion:chance/010_chance unless score @s exp.counter_1 matches 1.. if function expansion:mobs/mech/behavior/targeting/target_too_far store result score @s exp.counter_1 run random value 10..20

## SWITCH CONDITIONS
execute if predicate expansion:periodic/20 run function expansion:mobs/mech/behavior/movement/approaching/switch_rules