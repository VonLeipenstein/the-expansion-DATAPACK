scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.assembler.animation.ring_loop.local_anim_time 0
scoreboard players set @s aj.assembler.animation.ring_loop.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:assembler/zzzzzzzz/animations/ring_loop/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.assembler.animation.ring_loop