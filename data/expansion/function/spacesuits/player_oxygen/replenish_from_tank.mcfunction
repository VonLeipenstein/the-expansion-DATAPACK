# Note to self: This function doesn't run continuously because oxygen isn't removed continuously

# Obtain the suits current oxygen values
# (Sets #temp exp.oxygen_lvl and #temp exp.oxygen_max)
data modify storage expansion:temp ModStorage set from entity @s equipment.chest.components."minecraft:custom_data".ModStorage
function expansion:spacesuits/get_oxygen_data/init_loop

# Update plater oxygen
scoreboard players operation #target exp.oxygen_lvl = @s exp.oxygen_lvl
scoreboard players operation #target exp.oxygen_max = @s exp.oxygen_max
scoreboard players operation #source exp.oxygen_lvl = #temp exp.oxygen_lvl
scoreboard players operation #source exp.oxygen_max = #temp exp.oxygen_max
execute store result score @s exp.oxygen_lvl run function expansion:mechanics/oxygen/refill_calculation

# Calculate the suits new percentage
scoreboard players operation #input exp.math = #source exp.oxygen_lvl
scoreboard players operation #max exp.math = #source exp.oxygen_max
execute store result score #temp exp.oxygen_percent run function expansion:utilities/percentage

# Update suit oxygen
scoreboard players operation #input exp.oxygen_lvl = #source exp.oxygen_lvl
function expansion:spacesuits/set_oxygen_data/merge_oxygen

tellraw @s [{text:"Tank: "},{score:{name:"#temp",objective:"exp.oxygen_lvl"}}]