# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.buggy.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'buggy', 'function_path': 'animated_java:buggy/animations/drive/play'}
tag @s add aj.buggy.animation.drive.playing
scoreboard players set @s aj.drive.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:buggy/animations/drive/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only