# default ship rotation
execute rotated as @s on passengers if entity @s[tag=exp.player_rotation] run rotate @s ~ -10

# calculate the altitude
scoreboard players reset #temp exp.y
execute unless predicate expansion:dimension/zero_gravity at @s store result score #temp exp.y run function expansion:utilities/altitude/cast

# dive down if on a planet with gravity
execute unless predicate expansion:dimension/zero_gravity if score #temp exp.y matches 10.. run function expansion:vehicles/spaceship/propulsion/fall_down

# suspend ship in zero gravity
data merge entity @s[predicate=expansion:dimension/zero_gravity] {Motion:[0.0,0.0,0.0]}

# give slow falling
effect give @s[predicate=!expansion:dimension/zero_gravity] slow_falling 1 1 true

# add a tag that locks the ships rotation
tag @s[tag=!exp.ignore_player_rotation] add exp.ignore_player_rotation
scoreboard players reset #temp exp.y