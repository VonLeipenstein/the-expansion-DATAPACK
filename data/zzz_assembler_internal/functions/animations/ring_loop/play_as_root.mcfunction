scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.assembler.animation.ring_loop.local_anim_time 0
scoreboard players set @s aj.assembler.animation.ring_loop.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function zzz_assembler_internal:animations/ring_loop/tree/leaf_0
execute on passengers store result entity @s interpolation_duration int 1 run scoreboard players get $aj.default_interpolation_duration aj.i
tag @s add aj.assembler.animation.ring_loop