# >>> generated function callers >>>
# Callers for expansion:spacesuits/integrity/check_piece
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/integrity/iterate_over_armor (1 caller) [OK same-folder]
# <<< generated function callers <<<

# reset values
scoreboard players reset #temp exp.health
scoreboard players reset #temp exp.max_health
scoreboard players reset #temp exp.damage

# get the equipments durability scores (putting this here makes the percentage lag one iteration behind on the actionbar but I can't be bothered with that now)
execute store result score #temp exp.health run data get storage expansion:temp player.armor[0].components."minecraft:damage"
execute store result score #temp exp.max_health run data get storage expansion:temp player.armor[0].components."minecraft:max_damage"

# Check the ambient and piece temperature (resistance)
execute unless score @s exp.temperature matches 0 unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] run function expansion:spacesuits/temperature_damage/main

# apply any damage to this piece
execute if score #temp exp.damage matches 1.. run function expansion:spacesuits/temperature_damage/add

# add the durability scores to the total for the full set to calculate the total percentage
scoreboard players operation #value exp.suit_integrity += #temp exp.health
scoreboard players operation #max exp.suit_integrity += #temp exp.max_health

# reset values
scoreboard players reset #temp exp.health
scoreboard players reset #temp exp.max_health