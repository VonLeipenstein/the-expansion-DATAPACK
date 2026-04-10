# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/movement/wandering/activate
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 0/3 honored
# Sources:
# - function expansion:mobs/mech/behavior/movement/approaching/switch_rules (1 caller) [WARN side/down 2]
# - function expansion:mobs/mech/behavior/movement/backing_away/switch_rules (1 caller) [WARN side/down 2]
# - function expansion:mobs/mech/behavior/movement/strafing/switch_rules (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

scoreboard players set @s exp.rotation 4

# stop ongoing actions
execute on passengers if entity @s[tag=exp.mech_arm_controller,tag=exp.mech_action_toggle] run function expansion:vehicles/mech/actions/input