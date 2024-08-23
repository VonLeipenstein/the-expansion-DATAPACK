# add and remove oxygen from the source to the target
scoreboard players operation #missing exp.oxygen_lvl = #target exp.oxygen_max
scoreboard players operation #missing exp.oxygen_lvl -= #target exp.oxygen_lvl
execute if score #missing exp.oxygen_lvl > #source exp.oxygen_lvl run scoreboard players operation #missing exp.oxygen_lvl = #source exp.oxygen_lvl
scoreboard players operation #target exp.oxygen_lvl += #missing exp.oxygen_lvl
scoreboard players operation #source exp.oxygen_lvl -= #missing exp.oxygen_lvl

# calculate sources new percentage
scoreboard players operation #input exp.oxygen_lvl = #source exp.oxygen_lvl
scoreboard players operation #input exp.oxygen_max = #source exp.oxygen_max
execute store result score #source exp.oxygen_percent run function expansion:mechanics/oxygen/oxygen_percentage

# calculate targets new percentage
scoreboard players operation #input exp.oxygen_lvl = #target exp.oxygen_lvl
scoreboard players operation #input exp.oxygen_max = #target exp.oxygen_max
execute store result score #target exp.oxygen_percent run function expansion:mechanics/oxygen/oxygen_percentage