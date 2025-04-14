# set the new oxygen percentage
scoreboard players operation @s exp.oxygen_percent = #output exp.percentage

# skip if the player has no oxygen supply
execute unless score @s exp.oxygen_max matches 1.. run return fail

# Merge my oxygen score with the tanks in my equipment
scoreboard players operation #input exp.oxygen_lvl = @s exp.oxygen_lvl
data modify storage expansion:temp ModStorage set from entity @s equipment.chest.components."minecraft:custom_data".ModStorage
function expansion:spacesuits/set_oxygen_data/init_loop

# calculate new oxygen tank lore sprites
function expansion:spacesuits/module_icons/init_loop
item modify entity @s armor.chest expansion:space_equipment/display_module_icons

# Merge the oxygen percentage and new storage data with the equipment
scoreboard players operation #output exp.percentage = @s exp.oxygen_percent
item modify entity @s armor.chest expansion:oxygen_tank/merge_with_equipment