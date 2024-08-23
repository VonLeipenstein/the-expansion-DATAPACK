scoreboard players set @s exp.timer_1 1
tag @s add exp.tank_inside

execute at @s positioned ~ ~1 ~ as @n[type=item_display,tag=aj.compressor.root,distance=..0.1] run function animated_java:compressor/animations/compress/tween {to_frame: 0, duration: 5}
