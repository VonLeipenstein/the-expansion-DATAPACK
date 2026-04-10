# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/propulsion/jumping/impact
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/propulsion/jumping/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.mech_jumping
tag @s remove exp.mech_jumped

scoreboard players add @s exp.cooldown 12

scoreboard players set @s exp.size_mod -10

execute on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/landing/tween {to_frame: 0, duration: 3}