execute as @e[type=item_display,tag=aj.enhancer.root,distance=..1,limit=1,sort=nearest] run function animated_java:enhancer/animations/scanning/tween {to_frame: 15, duration: 30}

item replace entity @s container.0 from block ~ ~ ~ container.5

execute on vehicle run function expansion:blocks/enhancer/upgrade/remove
