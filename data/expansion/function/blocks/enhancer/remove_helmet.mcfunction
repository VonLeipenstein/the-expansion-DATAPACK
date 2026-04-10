# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/remove_helmet
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/player_nearby (1 caller) [OK same-folder]
# <<< generated function callers <<<

item replace entity @s contents with air
scoreboard players reset @s exp.hold_count
execute on passengers if entity @s[tag=aj.enhancer.root] run function animated_java:enhancer/animations/idle/tween {to_frame: 20, duration: 10}