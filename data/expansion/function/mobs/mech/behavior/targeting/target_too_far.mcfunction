# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/targeting/target_too_far
# Total callers: 5 from 4 source(s)
# Folder rule (function callers): 1/4 honored
# Sources:
# - function expansion:mobs/mech/behavior/movement/approaching/main (1 caller) [WARN side/down 3]
# - function expansion:mobs/mech/behavior/movement/backing_away/switch_rules (1 caller) [WARN side/down 3]
# - function expansion:mobs/mech/behavior/movement/strafing/switch_rules (1 caller) [WARN side/down 3]
# - function expansion:mobs/mech/behavior/on_mech (2 callers) [OK above +1]
# <<< generated function callers <<<

# stop if no target exists
execute unless entity @s[tag=exp.mech_arm_controller] unless function expansion:mobs/mech/behavior/targeting/has_target run return fail

# randomly check the desired range for the left or right arm
function expansion:mobs/mech/behavior/targeting/check_target_range

execute if score #temp exp.distance matches 3 run return run say target too far
return fail