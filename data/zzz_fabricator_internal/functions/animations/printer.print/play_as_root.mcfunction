scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.fabricator.animation.printer.print.local_anim_time 0
scoreboard players set @s aj.fabricator.animation.printer.print.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function zzz_fabricator_internal:animations/printer.print/tree/leaf_0
execute on passengers store result entity @s interpolation_duration int 1 run scoreboard players get $aj.default_interpolation_duration aj.i
tag @s add aj.fabricator.animation.printer.print