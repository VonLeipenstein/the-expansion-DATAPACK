# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/movement/strafing/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/mech/behavior/movement/main (1 caller) [OK above +1]
# <<< generated function callers <<<

## STATE RULES
# set initiual value
execute unless score @s exp.yaw matches -45..-1 unless score @s exp.yaw matches 1..45 run scoreboard players set @s exp.yaw 45
# switch the strafe if a block is in front
execute unless block ^ ^ ^1 #expansion:air run scoreboard players operation @s exp.yaw *= #-1 exp.const
# randomly switch the strafe
execute if predicate expansion:periodic/10 if predicate expansion:chance/010_chance run scoreboard players operation @s exp.yaw *= #-1 exp.const
scoreboard players set @s exp.warmup 1

## SWITCH CONDITIONS
execute if predicate expansion:periodic/10 run function expansion:mobs/mech/behavior/movement/strafing/switch_rules