# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.mech_torso.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'mech_torso', 'function_path': 'animated_java:mech_torso/animations/rocket_shoot_l/play'}
tag @s add aj.mech_torso.animation.rocket_shoot_l.playing
scoreboard players set @s aj.rocket_shoot_l.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:mech_torso/animations/rocket_shoot_l/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only