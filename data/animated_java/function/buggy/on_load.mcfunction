# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
scoreboard objectives add aj.steer_left.frame dummy
scoreboard objectives add aj.steer_right.frame dummy
scoreboard objectives add aj.drive.frame dummy
scoreboard objectives add aj.drive_back.frame dummy
execute as @e[type=item_display,tag=aj.buggy.root] unless score @s aj.is_rig_loaded matches 1 at @s run function animated_java:buggy/root/on_load