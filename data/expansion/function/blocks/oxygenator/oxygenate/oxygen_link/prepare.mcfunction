# link other entities
data modify storage expansion:owner data.current_UUID set from entity @s UUID

# signal that an entity should be connected
scoreboard players set #temp exp.oxygen_lvl 1