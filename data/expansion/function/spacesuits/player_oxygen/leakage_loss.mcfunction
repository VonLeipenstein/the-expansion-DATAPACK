# Lose a percentage of the players oxygen based on suit integrity
execute store result score #remove exp.oxygen_lvl run function expansion:mechanics/oxygen/calculate_leakage_loss
scoreboard players operation @s exp.oxygen_lvl -= #remove exp.oxygen_lvl
scoreboard players reset #remove exp.oxygen_lvl
