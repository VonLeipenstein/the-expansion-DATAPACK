# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/mech/main (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

execute on vehicle on vehicle if score @s exp.death matches 1.. run return run function expansion:mobs/mech/health/die/main

# face the current target
execute on vehicle on vehicle unless score @s exp.counter_2 matches 1.. on passengers if entity @s[tag=exp.mech_targeter] if function expansion:mobs/mech/behavior/targeting/has_target on origin facing entity @s feet run rotate @e[type=skeleton,distance=..0.001,limit=1] ~ ~

# mech movement, targeting and attacks
execute on vehicle on vehicle run function expansion:mobs/mech/behavior/on_mech