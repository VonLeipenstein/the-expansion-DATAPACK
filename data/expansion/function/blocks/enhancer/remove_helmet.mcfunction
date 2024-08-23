item replace entity @s container.0 with air

execute as @e[type=item_display,tag=aj.enhancer.root,distance=..1,limit=1,sort=nearest] run function animated_java:enhancer/animations/idle/tween {to_frame: 20, duration: 10}