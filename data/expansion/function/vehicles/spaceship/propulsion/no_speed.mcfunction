# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/propulsion/no_speed
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/inside (1 caller) [OK above +1]
# <<< generated function callers <<<

# default ship rotation
execute rotated as @s on passengers if entity @s[tag=exp.player_rotation] run rotate @s ~ 0

# dive down if on a planet with gravity
execute unless predicate expansion:dimension/zero_gravity run function expansion:vehicles/spaceship/propulsion/fall_down

# suspend ship in zero gravity
data merge entity @s[predicate=expansion:dimension/zero_gravity] {Motion:[0.0,0.0,0.0]}

# give slow falling
effect give @s[predicate=!expansion:dimension/zero_gravity] slow_falling 1 1 true

# add a tag that locks the ships rotation
tag @s[tag=!exp.ignore_player_rotation] add exp.ignore_player_rotation
scoreboard players reset #temp exp.y