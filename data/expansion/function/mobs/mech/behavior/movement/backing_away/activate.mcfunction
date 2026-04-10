# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/movement/backing_away/activate
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:mobs/mech/behavior/movement/approaching/switch_rules (1 caller) [WARN side/down 2]
# - function expansion:mobs/mech/behavior/movement/strafing/switch_rules (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

scoreboard players set @s exp.rotation 2

# have a chance to activate a short jump when switching to this state
execute if predicate expansion:chance/020_chance run scoreboard players set @s exp.counter_1 5

scoreboard players set @s exp.delay 40