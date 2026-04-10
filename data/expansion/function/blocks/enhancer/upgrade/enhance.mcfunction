# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/enhance
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/enhancer/gui/buttons/enhance (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

# Copy the equipment ModStorage to a storage for easier access and better performance
data modify storage expansion:temp ModStorage set from entity @s item.components."minecraft:custom_data".ModStorage

# Not all modules can be put on all equipment (oxygen tanks, magnetic boots, rocket boots, ammo etc.)
# Each module has a list of equipment ID's that it supports, the current equipment ID must be in that list
# Therefore, store the current equipment ID
execute store result score #temp exp.unique_id run data get entity @s item.components."minecraft:custom_data"."exp.enhanceID"

# reset the items lore
function expansion:blocks/enhancer/upgrade/apply/reset_lore

# copy the modules from the block to the ModStorage of the equipment
function expansion:blocks/enhancer/upgrade/apply/init_loop

# Apply module parameters
function expansion:blocks/enhancer/upgrade/apply/effects/init_loop

# Copy the modstorage from storage back to the equipment
item modify entity @s contents {"function": "minecraft:copy_custom_data","source": {"type": "minecraft:storage","source": "expansion:temp"},"ops": [{"source": "ModStorage","target": "ModStorage","op": "replace"}]}
# Also refresh the display item
item replace block ~ ~ ~ container.10 from entity @s contents
# reset storage
data remove storage expansion:temp ModStorage
# reset scores
scoreboard players reset #temp exp.unique_id