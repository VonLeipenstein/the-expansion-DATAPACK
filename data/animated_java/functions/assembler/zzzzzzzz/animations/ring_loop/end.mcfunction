execute if score @s aj.assembler.animation.ring_loop.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:assembler/zzzzzzzz/animations/ring_loop/end_loop
execute if score @s aj.assembler.animation.ring_loop.loop_mode = $aj.loop_mode.once aj.i run function animated_java:assembler/animations/ring_loop/stop
execute if score @s aj.assembler.animation.ring_loop.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:assembler/animations/ring_loop/pause