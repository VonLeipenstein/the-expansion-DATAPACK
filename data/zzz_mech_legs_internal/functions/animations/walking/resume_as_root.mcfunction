scoreboard players set @s aj.mech_legs.animation.walking.loop_mode 0
execute on passengers store result entity @s interpolation_duration int 1 run scoreboard players get $aj.default_interpolation_duration aj.i
tag @s add aj.mech_legs.animation.walking