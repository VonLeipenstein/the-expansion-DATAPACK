# add and remove oxygen from the source to the target
scoreboard players operation #missing exp.oxygen_lvl = #target exp.oxygen_max
scoreboard players operation #missing exp.oxygen_lvl -= #target exp.oxygen_lvl
execute if score #missing exp.oxygen_lvl > #source exp.oxygen_lvl run scoreboard players operation #missing exp.oxygen_lvl = #source exp.oxygen_lvl

# update the source and targets oxygen levels
scoreboard players operation #target exp.oxygen_lvl += #missing exp.oxygen_lvl
scoreboard players operation #source exp.oxygen_lvl -= #missing exp.oxygen_lvl

# return the new target lvl
return run scoreboard players get #target exp.oxygen_lvl