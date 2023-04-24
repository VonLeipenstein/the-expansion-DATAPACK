scoreboard players set @s aj.assembler.animation.ring_loop.loop_mode 1
execute on passengers store result entity @s interpolation_duration int 1 run scoreboard players get $aj.default_interpolation_duration aj.i
tag @s add aj.assembler.animation.ring_loop