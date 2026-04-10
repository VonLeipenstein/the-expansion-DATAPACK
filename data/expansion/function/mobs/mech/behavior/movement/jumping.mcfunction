# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/movement/jumping
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/mech/behavior/on_mech (1 caller) [OK above +1]
# <<< generated function callers <<<

## Jumping
scoreboard players set @s exp.jump 1
scoreboard players remove @s exp.counter_1 1
execute unless score @s exp.delay matches 10.. run scoreboard players set @s exp.delay 10