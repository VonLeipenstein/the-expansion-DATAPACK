# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/targeting/has_target
# Total callers: 14 from 13 source(s)
# Folder rule (function callers): 8/13 honored
# Sources:
# - function expansion:mobs/mech/behavior/main (1 caller) [OK above +1]
# - function expansion:mobs/mech/behavior/movement/approaching/switch_rules (1 caller) [WARN side/down 3]
# - function expansion:mobs/mech/behavior/movement/backing_away/switch_rules (1 caller) [WARN side/down 3]
# - function expansion:mobs/mech/behavior/movement/standing/switch_rules (1 caller) [WARN side/down 3]
# - function expansion:mobs/mech/behavior/movement/strafing/switch_rules (1 caller) [WARN side/down 3]
# - function expansion:mobs/mech/behavior/movement/wandering/switch_rules (1 caller) [WARN side/down 3]
# - function expansion:mobs/mech/behavior/on_mech (2 callers) [OK above +1]
# - function expansion:mobs/mech/behavior/targeting/find_new (1 caller) [OK same-folder]
# - function expansion:mobs/mech/behavior/targeting/init (1 caller) [OK same-folder]
# - function expansion:mobs/mech/behavior/targeting/target_in_range (1 caller) [OK same-folder]
# - function expansion:mobs/mech/behavior/targeting/target_too_close (1 caller) [OK same-folder]
# - function expansion:mobs/mech/behavior/targeting/target_too_far (1 caller) [OK same-folder]
# - function expansion:mobs/mech/behavior/targeting/target_visible (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if entity @s[tag=exp.mech_targeter] on origin unless entity @s[tag=exp.mech_targeter] run return 1

execute on passengers if entity @s[tag=exp.mech_targeter] on origin unless entity @s[tag=exp.mech_targeter] run return 1

return fail