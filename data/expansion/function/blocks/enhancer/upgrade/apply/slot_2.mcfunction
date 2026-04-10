# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/slot_2
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/storage_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute unless items block ~ ~ ~ container.13 *[minecraft:custom_data~{upgrade_module:1b}] run return fail

data modify storage expansion:temp allowed set from block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_data".allowedIDs
execute unless function expansion:blocks/enhancer/upgrade/apply/check_allowed/init_loop run return fail

execute if items block ~ ~ ~ container.13 *[minecraft:custom_data~{exp_item:{name:"slot_module"}}] run return run execute unless score #copy_module exp.max_range matches 5.. run function expansion:blocks/enhancer/upgrade/apply/effects/add_slot

data modify storage expansion:temp ModStorage[0] set from block ~ ~ ~ Items[{Slot:13b}]
data modify storage expansion:temp ModStorage[0].count set value 1

item modify block ~ ~ ~ container.13 expansion:utility/reduce_count