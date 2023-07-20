scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.mech_legs.animation.walking_backwards.local_anim_time 0
scoreboard players set @s aj.mech_legs.animation.walking_backwards.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:mech_legs/zzzzzzzz/animations/walking_backwards/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.mech_legs.animation.walking_backwards