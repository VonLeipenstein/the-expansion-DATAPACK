# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/punch/equip
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 0/3 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/mech/remove_mods/lefthand (1 caller) [WARN side/down 9]
# - function expansion:blocks/modification_station/upgrade/mech/remove_mods/righthand (1 caller) [WARN side/down 9]
# - function expansion:vehicles/mech/summon/equip_modules (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

scoreboard players set @s exp.mech_action_id 0

execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/variants/empty_left/apply
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/variants/empty_right/apply