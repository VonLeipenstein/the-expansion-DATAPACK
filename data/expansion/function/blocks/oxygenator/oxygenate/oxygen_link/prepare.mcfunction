# link other entities
data modify storage expansion:owner data.current_UUID set from entity @s UUID

tag @s add exp.oxygenated

scoreboard players set #temp exp.oxygen_lvl 1