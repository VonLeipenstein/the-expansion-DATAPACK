# Get oxygen scores every tick
function expansion:spacesuits/oxygen/get_data
execute store result score #suit exp.oxygen_percent run function expansion:spacesuits/oxygen/get_data/init_loop
scoreboard players operation #suit exp.oxygen_lvl = #temp exp.oxygen_lvl
scoreboard players operation #suit exp.oxygen_max = #temp exp.oxygen_max

# Lose a percentage of the players oxygen based on suit integrity
execute store result score #remove exp.oxygen_lvl run function expansion:mechanics/oxygen/calculate_leakage_loss
scoreboard players operation @s exp.oxygen_lvl -= #remove exp.oxygen_lvl