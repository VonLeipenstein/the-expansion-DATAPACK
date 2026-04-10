# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/drill/equip
# Total callers: 3 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/mech/apply_mods/apply_upgrade (2 callers) [WARN side/down 9]
# - function expansion:vehicles/mech/summon/equip_modules (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

scoreboard players set @s exp.mech_action_id 4

execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/variants/drill_left/apply
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/variants/drill_right/apply