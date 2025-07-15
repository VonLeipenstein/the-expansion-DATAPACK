## A bit cursed but I didn't want to make a storage loop

# head
execute store result score #head exp.cold_resist run data get storage expansion:temp player.armor[0].components."minecraft:custom_data".cold_resist.total
execute store result score #head exp.heat_resist run data get storage expansion:temp player.armor[0].components."minecraft:custom_data".heat_resist.total

# chest
execute store result score #chest exp.cold_resist run data get storage expansion:temp player.armor[1].components."minecraft:custom_data".cold_resist.total
execute store result score #chest exp.heat_resist run data get storage expansion:temp player.armor[1].components."minecraft:custom_data".heat_resist.total

# legs
execute store result score #legs exp.cold_resist run data get storage expansion:temp player.armor[2].components."minecraft:custom_data".cold_resist.total
execute store result score #legs exp.heat_resist run data get storage expansion:temp player.armor[2].components."minecraft:custom_data".heat_resist.total

# feet
execute store result score #feet exp.cold_resist run data get storage expansion:temp player.armor[3].components."minecraft:custom_data".cold_resist.total
execute store result score #feet exp.heat_resist run data get storage expansion:temp player.armor[3].components."minecraft:custom_data".heat_resist.total