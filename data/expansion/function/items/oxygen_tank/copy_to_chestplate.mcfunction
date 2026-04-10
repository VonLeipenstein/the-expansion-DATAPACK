# >>> generated function callers >>>
# Callers for expansion:items/oxygen_tank/copy_to_chestplate
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/fabricator/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

loot replace entity @s contents loot expansion:armor/diver/chestplate

# copy the recipe tanks stats to the new tank
data modify storage expansion:temp ModStorage set from entity @s item.components."minecraft:custom_data".ModStorage
data modify storage expansion:temp ModStorage[0] set from block ~ ~ ~ Items[{Slot:20b}]
data modify storage expansion:temp ModStorage[0].Slot set value 12b

# display the percentage
execute store result score #input exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.lvl
execute store result score #max exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.max
function expansion:utilities/percentage
item modify entity @s contents expansion:space_equipment/set_oxygen_lore

# display the icon
data remove storage expansion:temp icons
function expansion:spacesuits/module_icons/display_icon
item modify entity @s contents expansion:space_equipment/display_module_icons

# merge the data
item modify entity @s contents {"function": "minecraft:copy_custom_data","source": {"type": "minecraft:storage","source": "expansion:temp"},"ops": [{"source": "ModStorage","target": "ModStorage","op": "replace"}]}
data remove storage expansion:temp ModStorage
data remove storage expansion:temp icons