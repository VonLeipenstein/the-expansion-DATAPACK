# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.mech_torso.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'mech_torso', 'function_path': 'animated_java:mech_torso/animations/gatling_start_r/next_frame'}
execute if score @s aj.gatling_start_r.frame matches 21.. run scoreboard players set @s aj.gatling_start_r.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.gatling_start_r.frame
execute at @s run function animated_java:mech_torso/animations/gatling_start_r/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.gatling_start_r.frame 1