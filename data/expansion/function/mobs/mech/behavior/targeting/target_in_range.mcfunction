# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/targeting/target_in_range
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:mobs/mech/behavior/movement/approaching/switch_rules (1 caller) [WARN side/down 3]
# - function expansion:mobs/mech/behavior/movement/backing_away/switch_rules (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

# stop if no target exists
execute unless entity @s[tag=exp.mech_arm_controller] unless function expansion:mobs/mech/behavior/targeting/has_target run return fail

# randomly check the desired range for the left or right arm
function expansion:mobs/mech/behavior/targeting/check_target_range

execute if score #temp exp.distance matches 2 run return run say target in range
return fail