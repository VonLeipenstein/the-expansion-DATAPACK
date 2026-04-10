# >>> generated function callers >>>
# Callers for expansion:blocks/compressor/compress/start
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/compressor/insert_tank (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players set @s exp.timer_1 1
tag @s add exp.tank_inside

execute on passengers if entity @s[tag=aj.compressor.root] run function animated_java:compressor/animations/compress/tween {to_frame: 0, duration: 5}
