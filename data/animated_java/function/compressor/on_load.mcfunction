# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
scoreboard objectives add aj.compress.frame dummy
scoreboard objectives add aj.idle.frame dummy
execute as @e[type=item_display,tag=aj.compressor.root] unless score @s aj.is_rig_loaded matches 1 at @s run function animated_java:compressor/root/on_load