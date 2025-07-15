# If anything has already added this players armor to the armor storage this tick, take the ModStorage from there
execute if data storage expansion:temp player.armor[1] run return run data modify storage expansion:temp ModStorage set from storage expansion:temp player.armor[1].components."minecraft:custom_data".ModStorage
# Otherwise, take it from the player
data modify storage expansion:temp ModStorage set from entity @s equipment.chest.components."minecraft:custom_data".ModStorage