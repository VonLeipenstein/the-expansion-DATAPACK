# >>> generated function callers >>>
# Callers for expansion:spacesuits/oxygen/get_data
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:spacesuits/oxygen/leakage_loss (1 caller) [OK same-folder]
# - function expansion:spacesuits/oxygen/replenish_from_tank (1 caller) [OK same-folder]
# <<< generated function callers <<<

# If anything has already added this players armor to the armor storage this tick, take the ModStorage from there
execute if data storage expansion:temp player.armor[1] run return run data modify storage expansion:temp ModStorage set from storage expansion:temp player.armor[1].components."minecraft:custom_data".ModStorage
# Otherwise, take it from the player
data modify storage expansion:temp ModStorage set from entity @s equipment.chest.components."minecraft:custom_data".ModStorage