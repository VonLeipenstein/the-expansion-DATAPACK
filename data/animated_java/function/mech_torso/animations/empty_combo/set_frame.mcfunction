# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.mech_torso.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'mech_torso', 'function_path': 'animated_java:mech_torso/animations/empty_combo/set_frame'}
$execute store result storage aj:temp frame int 1 run scoreboard players set @s aj.empty_combo.frame $(frame)
execute at @s run function animated_java:mech_torso/animations/empty_combo/zzz/set_frame with storage aj:temp