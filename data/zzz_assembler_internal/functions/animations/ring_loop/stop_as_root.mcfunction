scoreboard players set @s aj.assembler.animation.ring_loop.local_anim_time 0
tag @s remove aj.assembler.animation.ring_loop
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.assembler.disable_command_keyframes
function zzz_assembler_internal:animations/ring_loop/tree/leaf_0
tag @s remove aj.assembler.disable_command_keyframes