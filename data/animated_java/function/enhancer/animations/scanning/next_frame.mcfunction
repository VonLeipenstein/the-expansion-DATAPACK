# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.enhancer.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'enhancer', 'function_path': 'animated_java:enhancer/animations/scanning/next_frame'}
execute if score @s aj.scanning.frame matches 41.. run scoreboard players set @s aj.scanning.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.scanning.frame
execute at @s run function animated_java:enhancer/animations/scanning/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.scanning.frame 1