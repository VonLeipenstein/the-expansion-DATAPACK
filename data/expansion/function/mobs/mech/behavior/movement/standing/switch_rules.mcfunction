# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/movement/standing/switch_rules
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/mech/behavior/movement/standing/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# switch to approaching if a target is available
execute if function expansion:mobs/mech/behavior/targeting/has_target run return run function expansion:mobs/mech/behavior/movement/approaching/activate
