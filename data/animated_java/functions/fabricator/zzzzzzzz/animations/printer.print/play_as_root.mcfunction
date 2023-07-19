scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.fabricator.animation.printer.print.local_anim_time 0
scoreboard players set @s aj.fabricator.animation.printer.print.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:fabricator/zzzzzzzz/animations/printer.print/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.fabricator.animation.printer.print