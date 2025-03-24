# count the total number of passengers, if it is 0 it means that no new markers were able to be made, 
# meaning that the oxygenation was completed successfully
scoreboard players add #temp exp.hold_value 1
scoreboard players reset #temp exp.oxygen_lvl

# stop the scan if this entity is out of range
execute unless entity @s[distance=..20] run return run scoreboard players set #temp exp.hold_count 2000

# expand the scan
# Your expand attempt failed, which means you're either surrounded by blocks or other markers.
# No situation can now occur in which you can ever expand again
# this should be killed if no active scanners remain nearby
execute at @s unless function expansion:blocks/oxygenator/oxygenate/fill_space/attempt_expand run tag @s remove exp.new_scanner

# establish an oxygen link if an entity was selected
execute if score #temp exp.oxygen_lvl matches 1 summon snowball run function expansion:blocks/oxygenator/oxygenate/oxygen_link/finish
scoreboard players reset #temp exp.oxygen_lvl