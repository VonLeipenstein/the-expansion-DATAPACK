# provide entities that were hit by the wave with oxygen
# and remove entities from the oxygen supply if they werent hit by the wave
execute on passengers if entity @s[tag=exp.oxygen_link] run function expansion:blocks/oxygenator/oxygenate/oxygen_link/check

# give the oxygenator a tag that it will keep until a scan fails. This is to give players that enter an already exp.pressurized base immediate access to oxygen
execute unless entity @s[tag=exp.pressurized] run function expansion:blocks/oxygenator/oxygenate/scan/first_success

# Evaluate the success of this scan by the max amount of scanners used (causative for almost all lag)
# If the best max amount of scanners is smaller than the previously established best max amount,
# Replace it and the best_start_pos with the start_pos of this scan.
tellraw @a [{"text": "Scan: "},{"score":{"name":"@s","objective":"exp.passenger_count"}}]
tellraw @a [{"text": "Current: "},{"score":{"name":"@s","objective":"exp.counter_1"}}]
tellraw @a [{"text": "Best: "},{"score":{"name":"@s","objective":"exp.counter_2"}}]

execute unless score @s exp.counter_1 >= @s exp.counter_2 run data modify entity @s item.components."minecraft:custom_data".best_start_pos set from entity @s item.components."minecraft:custom_data".start_pos
execute unless score @s exp.counter_1 >= @s exp.counter_2 run scoreboard players operation @s exp.counter_2 = @s exp.counter_1

# document the total number of succesful scans
scoreboard players add @s exp.passenger_count 1

# Set a cooldown to the next scan
scoreboard players set @s exp.cooldown 40