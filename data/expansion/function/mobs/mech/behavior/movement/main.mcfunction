# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/movement/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/mech/behavior/on_mech (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players set @s exp.jump 0
# this score blocks the switching of states
execute if score @s exp.delay matches 1.. run scoreboard players remove @s exp.delay 1

## Movement states
# standing (default)
execute unless score @s exp.rotation matches 1.. run return run function expansion:mobs/mech/behavior/movement/standing/main
# approaching
execute if score @s exp.rotation matches 1 run return run function expansion:mobs/mech/behavior/movement/approaching/main
# backing away
execute if score @s exp.rotation matches 2 run return run function expansion:mobs/mech/behavior/movement/backing_away/main
# strafing
execute if score @s exp.rotation matches 3 run return run function expansion:mobs/mech/behavior/movement/strafing/main
# wandering
execute if score @s exp.rotation matches 4 run return run function expansion:mobs/mech/behavior/movement/wandering/main