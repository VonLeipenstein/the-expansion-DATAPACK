# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/slot_1
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/storage_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# fail if the block slot doesn't contain an upgrade module
execute unless items block ~ ~ ~ container.12 *[minecraft:custom_data~{upgrade_module:1b}] run return fail

# fail if the block slots module is not compatible with this equipment piece
data modify storage expansion:temp allowed set from block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".allowedIDs
execute unless function expansion:blocks/enhancer/upgrade/apply/check_allowed/init_loop run return fail

# if this is a slot module, add it only if the current amount of slots is lower than 5
execute if items block ~ ~ ~ container.12 *[minecraft:custom_data~{exp_item:{name:"slot_module"}}] run return run execute unless score #copy_module exp.max_range matches 5.. run function expansion:blocks/enhancer/upgrade/apply/effects/add_slot

# else, copy the module to the equipment and remove it from the block
data modify storage expansion:temp ModStorage[0] set from block ~ ~ ~ Items[{Slot:12b}]
data modify storage expansion:temp ModStorage[0].count set value 1
item modify block ~ ~ ~ container.12 expansion:utility/reduce_count