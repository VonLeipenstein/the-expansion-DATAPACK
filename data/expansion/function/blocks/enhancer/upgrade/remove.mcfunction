# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/remove
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/enhancer/display_helmet (1 caller) [OK above +1]
# - function expansion:blocks/enhancer/gui/buttons/remove (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

## Removes any modules from the Equipment in slot 10 and adds them to the block
# Performance takes quite a hit but I chose ease of use over performance

# copy the equipment item to a storage for easier access and better performance
data modify storage expansion:temp ModStorage set from entity @s item.components."minecraft:custom_data".ModStorage

# reset the items lore
function expansion:blocks/enhancer/upgrade/apply/reset_lore

# Unless there is an item in the block slot, if there is a module in the equipment slot, remove the module from the equipment slot into the item slot
execute unless items block ~ ~ ~ container.12 *[!custom_data~{gui_item:1b}] if data storage expansion:temp ModStorage[0].id run function expansion:blocks/enhancer/upgrade/remove/slot_1
execute unless items block ~ ~ ~ container.13 *[!custom_data~{gui_item:1b}] if data storage expansion:temp ModStorage[1].id run function expansion:blocks/enhancer/upgrade/remove/slot_2
execute unless items block ~ ~ ~ container.14 *[!custom_data~{gui_item:1b}] if data storage expansion:temp ModStorage[2].id run function expansion:blocks/enhancer/upgrade/remove/slot_3
execute unless items block ~ ~ ~ container.15 *[!custom_data~{gui_item:1b}] if data storage expansion:temp ModStorage[3].id run function expansion:blocks/enhancer/upgrade/remove/slot_4
execute unless items block ~ ~ ~ container.16 *[!custom_data~{gui_item:1b}] if data storage expansion:temp ModStorage[4].id run function expansion:blocks/enhancer/upgrade/remove/slot_5

# Re-apply any remaining module parameters
function expansion:blocks/enhancer/upgrade/apply/effects/init_loop

# display the module icons
item modify entity @s contents expansion:space_equipment/display_module_icons

# Copy the modstorage from storage back to the equipment
item modify entity @s contents {"function": "minecraft:copy_custom_data","source": {"type": "minecraft:storage","source": "expansion:temp"},"ops": [{"source": "ModStorage","target": "ModStorage","op": "replace"}]}
# Also refresh the display item
item replace block ~ ~ ~ container.10 from entity @s contents