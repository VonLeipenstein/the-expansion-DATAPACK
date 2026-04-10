# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/targeting/target_too_close
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 0/3 honored
# Sources:
# - function expansion:mobs/mech/behavior/movement/approaching/switch_rules (1 caller) [WARN side/down 3]
# - function expansion:mobs/mech/behavior/movement/backing_away/main (1 caller) [WARN side/down 3]
# - function expansion:mobs/mech/behavior/movement/strafing/switch_rules (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

# stop if no target exists
execute unless entity @s[tag=exp.mech_arm_controller] unless function expansion:mobs/mech/behavior/targeting/has_target run return fail

# randomly check the desired range for the left or right arm
function expansion:mobs/mech/behavior/targeting/check_target_range

execute if score #temp exp.distance matches 1 run return run say target too close
return fail