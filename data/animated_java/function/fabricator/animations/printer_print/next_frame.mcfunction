# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.fabricator.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'fabricator', 'function_path': 'animated_java:fabricator/animations/printer_print/next_frame'}
execute if score @s aj.printer_print.frame matches 61.. run scoreboard players set @s aj.printer_print.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.printer_print.frame
execute at @s run function animated_java:fabricator/animations/printer_print/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.printer_print.frame 1