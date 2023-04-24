scoreboard players add @s aj.fabricator.animation.printer.print.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.fabricator.animation.printer.print.local_anim_time
function zzz_fabricator_internal:animations/printer.print/apply_frame_as_root
execute if score @s aj.fabricator.animation.printer.print.local_anim_time matches 60.. run function zzz_fabricator_internal:animations/printer.print/end