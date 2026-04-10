# >>> generated function callers >>>
# Callers for expansion:spacesuits/oxygen/set_data/merge_oxygen
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/oxygen/replenish_from_tank (1 caller) [OK above +1]
# <<< generated function callers <<<

## Parameters
# - #temp exp.oxygen_lvl : new oxygen lvl
# - #new exp.oxygen_percent : new oxygen percent

# Merge my oxygen score with the tanks in my equipment
data modify storage expansion:temp ModStorage set from entity @s equipment.chest.components."minecraft:custom_data".ModStorage
function expansion:spacesuits/oxygen/set_data/init_loop

# calculate new oxygen tank lore sprites
function expansion:spacesuits/module_icons/init_loop
item modify entity @s armor.chest expansion:space_equipment/display_module_icons

# Merge the oxygen percentage (#temp exp.percentage) and new storage data with the equipment
item modify entity @s armor.chest expansion:oxygen_tank/merge_with_equipment

# reset scores
scoreboard players reset #input exp.oxygen_lvl