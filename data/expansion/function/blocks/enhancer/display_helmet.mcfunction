# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/display_helmet
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/enhancer/interaction (1 caller) [OK same-folder]
# - function expansion:blocks/enhancer/interaction/insert_helmet (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

# Play the scanning animation
execute unless score @s exp.hold_count matches 0.. on passengers if entity @s[tag=aj.enhancer.root] run function animated_java:enhancer/animations/scanning/tween {to_frame: 20, duration: 20}

# update the display item
item replace entity @s contents from block ~ ~ ~ container.10

function expansion:blocks/enhancer/upgrade/remove