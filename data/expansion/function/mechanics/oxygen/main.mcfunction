## System:
# The player has an internal oxygen reserve which constantly depletes
# The suits oxygen tanks replenish the reserve from their own
# Oxygenator, Terraformer, Vehicles and Planets with oxygen grant an unlimited supply.
# The player only suffocates if its own reserve runs out

# Initiate a players oxygen score if they don't yet have any
execute unless score @s exp.oxygen_max matches 0.. run function expansion:mechanics/oxygen/init

# Suffocate player
execute if predicate expansion:periodic/10 unless score @s exp.oxygen_lvl matches 1.. run function expansion:mechanics/oxygen/suffocate

# Remove oxygen
# Needs to be after suffocate so the entire next tick has the chance to refill the lost oxygen
execute if predicate expansion:periodic/10 if score @s exp.oxygen_lvl matches 1.. run function expansion:mechanics/oxygen/lose