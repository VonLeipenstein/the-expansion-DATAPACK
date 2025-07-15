# runs as the spaceship when a player is inside
execute on vehicle on vehicle run function expansion:vehicles/spaceship/inside

# give a player unlimited oxygen
scoreboard players operation @s exp.oxygen_lvl = @s exp.oxygen_max

# reset the players temperature
scoreboard players set @s exp.temperature 0
# Prevents suit leakage
tag @s add exp.inside_pressurized_space
# Gives this oxygen source priority over the suits tanks
tag @s add exp.connected_to_oxygen