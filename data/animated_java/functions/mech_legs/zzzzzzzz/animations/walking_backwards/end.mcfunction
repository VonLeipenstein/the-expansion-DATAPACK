execute if score @s aj.mech_legs.animation.walking_backwards.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:mech_legs/zzzzzzzz/animations/walking_backwards/end_loop
execute if score @s aj.mech_legs.animation.walking_backwards.loop_mode = $aj.loop_mode.once aj.i run function animated_java:mech_legs/animations/walking_backwards/stop
execute if score @s aj.mech_legs.animation.walking_backwards.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:mech_legs/animations/walking_backwards/pause