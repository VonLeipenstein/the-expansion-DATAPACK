# >>> generated function callers >>>
# Callers for expansion:blocks/compressor/compress/stop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/compressor/compress/main (1 caller) [OK same-folder]
# - function expansion:blocks/compressor/take_tank (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players set @s exp.timer_1 0
scoreboard players reset #temp exp.bool
scoreboard players reset #target exp.oxygen_lvl
scoreboard players reset #target exp.oxygen_max
execute on passengers if entity @s[tag=aj.compressor.root] run function animated_java:compressor/animations/idle/tween {to_frame: 0, duration: 6}
