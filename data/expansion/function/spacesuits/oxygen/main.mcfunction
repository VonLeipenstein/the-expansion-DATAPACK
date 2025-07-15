# Lose a percentage of the suits oxygen reserve (tank) based on the suit integrity
execute if predicate expansion:periodic/10 if predicate expansion:dimension/oxygen_absent unless entity @s[tag=exp.inside_pressurized_space] run function expansion:spacesuits/oxygen/leakage_loss
tag @s remove exp.inside_pressurized_space

# Attempt to refill the players oxygen supply if it is not already full
# Don't if the player is inside a vehicle
execute unless score @s exp.oxygen_lvl = @s exp.oxygen_max unless entity @s[tag=exp.connected_to_oxygen] run function expansion:spacesuits/oxygen/replenish_from_tank
tag @s remove exp.connected_to_oxygen