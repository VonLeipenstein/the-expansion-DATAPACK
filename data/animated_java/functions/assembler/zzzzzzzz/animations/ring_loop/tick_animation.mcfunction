scoreboard players add @s aj.assembler.animation.ring_loop.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.assembler.animation.ring_loop.local_anim_time
function animated_java:assembler/zzzzzzzz/animations/ring_loop/apply_frame_as_root
execute if score @s aj.assembler.animation.ring_loop.local_anim_time matches 200.. run function animated_java:assembler/zzzzzzzz/animations/ring_loop/end