scoreboard players set @s aj.fabricator.animation.printer.print.local_anim_time 0
tag @s remove aj.fabricator.animation.printer.print
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.fabricator.disable_command_keyframes
function animated_java:fabricator/zzzzzzzz/animations/printer.print/tree/leaf_0
tag @s remove aj.fabricator.disable_command_keyframes