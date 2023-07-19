scoreboard players add @s aj.fabricator.animation.printer.print.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.fabricator.animation.printer.print.local_anim_time
function animated_java:fabricator/zzzzzzzz/animations/printer.print/apply_frame_as_root
execute if score @s aj.fabricator.animation.printer.print.local_anim_time matches 60.. run function animated_java:fabricator/zzzzzzzz/animations/printer.print/end