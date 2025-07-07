# get the parameters
execute store result score #source exp.fuel_level run data get entity @p[tag=exp.clicked_ship] SelectedItem.components."minecraft:custom_data".fuel.lvl
execute store result score #source exp.fuel_max run data get entity @p[tag=exp.clicked_ship] SelectedItem.components."minecraft:custom_data".fuel.max
scoreboard players operation #target exp.fuel_level = @s exp.fuel_level
scoreboard players operation #target exp.fuel_max = @s exp.fuel_max

# fill the spaceship
scoreboard players operation #missing exp.fuel_level = #target exp.fuel_max
scoreboard players operation #missing exp.fuel_level -= #target exp.fuel_level
execute if score #missing exp.fuel_level > #source exp.fuel_level run scoreboard players operation #missing exp.fuel_level = #source exp.fuel_level
scoreboard players operation #target exp.fuel_level += #missing exp.fuel_level
scoreboard players operation #source exp.fuel_level -= #missing exp.fuel_level

# merge the new fuel level with the spaceship
scoreboard players operation @s exp.fuel_level = #target exp.fuel_level

# calculate sources new percentage
scoreboard players operation #input exp.math = #source exp.fuel_level
scoreboard players operation #max exp.math = #source exp.fuel_max
execute store result score #source exp.fuel_percentage run function expansion:utilities/percentage

# merge the fuel level with the players fuel cell
execute store result storage expansion:temp data.fuel.lvl int 1 run scoreboard players get #source exp.fuel_level
scoreboard players operation #temp exp.percentage = #source exp.fuel_percentage
item modify entity @p[tag=exp.clicked_ship] weapon.mainhand expansion:fuel_cell/merge_level_from_data

# remove interaction data
execute on passengers run data remove entity @s[type=minecraft:interaction] interaction

# calculate the new fuel percentage
function expansion:utilities/fuel_percentage

# reset scores
scoreboard players reset #temp exp.percentage
scoreboard players reset #target exp.fuel_level
scoreboard players reset #target exp.fuel_max
scoreboard players reset #source exp.fuel_level
scoreboard players reset #source exp.fuel_max
scoreboard players reset #source exp.fuel_percentage
scoreboard players reset #missing exp.fuel_level