# >>> generated function callers >>>
# Callers for expansion:spacesuits/extract_scores
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Get player armor data in storage
function expansion:utilities/copy_armor_to_storage

# Get armor max
execute store result score #helmet exp.max_health run data get storage expansion:temp player.armor[0].components."minecraft:max_damage"
execute store result score #chestpiece exp.max_health run data get storage expansion:temp player.armor[1].components."minecraft:max_damage"
execute store result score #leggings exp.max_health run data get storage expansion:temp player.armor[2].components."minecraft:max_damage"
execute store result score #boots exp.max_health run data get storage expansion:temp player.armor[3].components."minecraft:max_damage"

# Get armor durability damage
execute store result score #helmet exp.damage run data get storage expansion:temp player.armor[0].components."minecraft:damage"
execute store result score #chestpiece exp.damage run data get storage expansion:temp player.armor[1].components."minecraft:damage"
execute store result score #leggings exp.damage run data get storage expansion:temp player.armor[2].components."minecraft:damage"
execute store result score #boots exp.damage run data get storage expansion:temp player.armor[3].components."minecraft:damage"

# Get armor remaining durability
scoreboard players operation #helmet exp.health = #helmet exp.max_health
scoreboard players operation #chestpiece exp.health = #chestpiece exp.max_health
scoreboard players operation #leggings exp.health = #leggings exp.max_health
scoreboard players operation #boots exp.health = #boots exp.max_health
scoreboard players operation #helmet exp.health -= #helmet exp.damage
scoreboard players operation #chestpiece exp.health -= #chestpiece exp.damage
scoreboard players operation #leggings exp.health -= #leggings exp.damage
scoreboard players operation #boots exp.health -= #boots exp.damage

# suit integrity per piece
scoreboard players operation #input exp.math = #helmet exp.health
scoreboard players operation #max exp.math = #helmet exp.max_health
execute store result score #helmet exp.suit_integrity run function expansion:utilities/percentage
scoreboard players operation #input exp.math = #chestpiece exp.health
scoreboard players operation #max exp.math = #chestpiece exp.max_health
execute store result score #chestpiece exp.suit_integrity run function expansion:utilities/percentage
scoreboard players operation #input exp.math = #leggings exp.health
scoreboard players operation #max exp.math = #leggings exp.max_health
execute store result score #leggings exp.suit_integrity run function expansion:utilities/percentage
scoreboard players operation #input exp.math = #boots exp.health
scoreboard players operation #max exp.math = #boots exp.max_health
execute store result score #boots exp.suit_integrity run function expansion:utilities/percentage

# Get relevant temperature scores
execute if score @s exp.temperature matches 1.. store result score #helmet exp.temperature run data get storage expansion:temp player.armor[0].components."minecraft:custom_data".heat_resist.total
execute if score @s exp.temperature matches 1.. store result score #chestpiece exp.temperature run data get storage expansion:temp player.armor[1].components."minecraft:custom_data".heat_resist.total
execute if score @s exp.temperature matches 1.. store result score #leggings exp.temperature run data get storage expansion:temp player.armor[2].components."minecraft:custom_data".heat_resist.total
execute if score @s exp.temperature matches 1.. store result score #boots exp.temperature run data get storage expansion:temp player.armor[3].components."minecraft:custom_data".heat_resist.total

execute if score @s exp.temperature matches ..-1 store result score #helmet exp.temperature run data get storage expansion:temp player.armor[0].components."minecraft:custom_data".cold_resist.total
execute if score @s exp.temperature matches ..-1 store result score #chestpiece exp.temperature run data get storage expansion:temp player.armor[1].components."minecraft:custom_data".cold_resist.total
execute if score @s exp.temperature matches ..-1 store result score #leggings exp.temperature run data get storage expansion:temp player.armor[2].components."minecraft:custom_data".cold_resist.total
execute if score @s exp.temperature matches ..-1 store result score #boots exp.temperature run data get storage expansion:temp player.armor[3].components."minecraft:custom_data".cold_resist.total