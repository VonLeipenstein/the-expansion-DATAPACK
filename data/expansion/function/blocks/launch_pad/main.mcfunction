# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# ticks as the rocket bound to this launchpad
# execute on passengers if entity @s[type=snowball] on origin at @s run function expansion:blocks/launch_pad/rocket/main

# Periodic main functions (updating text displays, checkling launch requirements)
execute if predicate expansion:periodic/5 run function expansion:blocks/launch_pad/main_5t

# Keep the origin and destination planet up to date
execute on passengers if entity @s[type=interaction] on passengers if entity @s[tag=exp.rocket_segment] store result score @s exp.origin on vehicle on vehicle run scoreboard players get @s exp.origin
execute on passengers if entity @s[type=interaction] on passengers if entity @s[tag=exp.rocket_segment] store result score @s exp.destination on vehicle on vehicle run scoreboard players get @s exp.destination
