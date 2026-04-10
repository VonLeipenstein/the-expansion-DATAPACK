# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/switch_weapons/init
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:mobs/mech/bots/summon (1 caller) [WARN side/down 3]
# - function expansion:mobs/mech/health/hurt (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

scoreboard players set @s exp.counter_2 200

execute if entity @s[tag=exp.mech_switched2] run tag @s add exp.mech_switched3
execute if entity @s[tag=exp.mech_switched1] run tag @s add exp.mech_switched2
tag @s add exp.mech_switched1

# stop ongoing actions
execute on passengers if entity @s[tag=exp.mech_arm_controller,tag=exp.mech_action_toggle] run function expansion:vehicles/mech/actions/input