# >>> generated function callers >>>
# Callers for expansion:solar_system/transitions/from_space/to_venus/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:solar_system/transitions/planet_detection (1 caller) [OK above +2]
# <<< generated function callers <<<

# triggers when not inside the ship
execute if entity @s[predicate=expansion:riding/spaceship,tag=exp.spaceship_pilot] run return run function expansion:solar_system/transitions/from_space/to_venus/prepare

execute unless predicate expansion:riding/spaceship in expansion:venus run tp @s ~ 300 ~ ~ 35