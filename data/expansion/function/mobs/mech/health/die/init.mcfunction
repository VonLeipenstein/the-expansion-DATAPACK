# >>> generated function callers >>>
# Callers for expansion:mobs/mech/health/die/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/mech/health/hurt (1 caller) [OK above +1]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/pause_all
execute on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/pause_all

scoreboard players set @s exp.death 100