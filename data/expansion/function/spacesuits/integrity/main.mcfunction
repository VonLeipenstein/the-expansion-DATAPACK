## All relevant values were retrieved in extract_scores

# Deal water damage to the suit
execute unless predicate expansion:armor/diver/set if function expansion:spacesuits/integrity/detect_water run function expansion:spacesuits/integrity/water_damage

# Get a positive variant of the temperature score
scoreboard players operation #base exp.temperature = @s exp.temperature
execute if score #base exp.temperature matches ..-1 run scoreboard players operation #base exp.temperature *= #-1 exp.const

# reset damage for later use
scoreboard players set #helmet exp.damage 0
scoreboard players set #chestpiece exp.damage 0
scoreboard players set #leggings exp.damage 0
scoreboard players set #boots exp.damage 0

# calculate the damage for each piece
scoreboard players operation #ambient exp.temperature = #base exp.temperature
execute if score #helmet exp.temperature < #ambient exp.temperature store result score #helmet exp.damage run scoreboard players operation #ambient exp.temperature -= #helmet exp.temperature
scoreboard players operation #ambient exp.temperature = #base exp.temperature
execute if score #chestpiece exp.temperature < #ambient exp.temperature store result score #chestpiece exp.damage run scoreboard players operation #ambient exp.temperature -= #chestpiece exp.temperature
scoreboard players operation #ambient exp.temperature = #base exp.temperature
execute if score #leggings exp.temperature < #ambient exp.temperature store result score #leggings exp.damage run scoreboard players operation #ambient exp.temperature -= #leggings exp.temperature
scoreboard players operation #ambient exp.temperature = #base exp.temperature
execute if score #boots exp.temperature < #ambient exp.temperature store result score #boots exp.damage run scoreboard players operation #ambient exp.temperature -= #boots exp.temperature

# damage all pieces regardless of resistances if not wearing a full suit
execute unless predicate expansion:armor/all run function expansion:spacesuits/integrity/missing_piece

# apply the damage to each piece
execute if score #helmet exp.damage matches 1.. run function expansion:spacesuits/integrity/damage/head
execute if score #chestpiece exp.damage matches 1.. run function expansion:spacesuits/integrity/damage/chest
execute if score #leggings exp.damage matches 1.. run function expansion:spacesuits/integrity/damage/legs
execute if score #boots exp.damage matches 1.. run function expansion:spacesuits/integrity/damage/feet

# Calculate the integrity percentage, lags behind one tick
scoreboard players set @s exp.suit_integrity 0
scoreboard players operation @s exp.suit_integrity += #helmet exp.suit_integrity
scoreboard players operation @s exp.suit_integrity += #chestpiece exp.suit_integrity
scoreboard players operation @s exp.suit_integrity += #leggings exp.suit_integrity
scoreboard players operation @s exp.suit_integrity += #boots exp.suit_integrity
scoreboard players operation @s exp.suit_integrity /= #4 exp.const

# Reset scores
scoreboard players reset #value exp.suit_integrity
scoreboard players reset #max exp.suit_integrity
scoreboard players reset #helmet exp.damage
scoreboard players reset #chestpiece exp.damage
scoreboard players reset #leggings exp.damage
scoreboard players reset #boots exp.damage
scoreboard players reset #base exp.temperature
scoreboard players reset #ambient exp.temperature