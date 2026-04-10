# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/printing/valid_output
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/fabricator/printing/prepare_print (1 caller) [OK same-folder]
# <<< generated function callers <<<

# check if the item already in the output slot is the same as the item about to be printed
execute if items block ~ ~ ~ container.15 * unless function expansion:blocks/fabricator/printing/compare_output run return fail

# prevent printing when the output slot is full
execute store result score #temp1 exp.hold_count run data get entity @s item.components."minecraft:custom_data".exp_item.max_stack_size
execute store result score #temp2 exp.hold_count run data get entity @s item.components."minecraft:custom_data".exp_item.crafting_count
execute store result score #temp3 exp.hold_count run data get block ~ ~ ~ Items[{Slot:15b}].count
scoreboard players operation #temp3 exp.hold_count += #temp2 exp.hold_count

# fail the crafting if the outpout slot if full
execute if score #temp3 exp.hold_count > #temp1 exp.hold_count run return fail

return 1