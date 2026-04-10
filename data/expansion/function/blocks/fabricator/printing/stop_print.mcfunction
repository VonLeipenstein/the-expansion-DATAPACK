# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/printing/stop_print
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/fabricator/printing/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# if there is already an item(the same item as checked previously) then increment its count.
execute store result score @s exp.hold_count run data get entity @s item.components."minecraft:custom_data".exp_item.crafting_count

# either increment the count of a matching item or insert the new item
execute if items block ~ ~ ~ container.15 * if function expansion:blocks/fabricator/printing/compare_output run item modify block ~ ~ ~ container.15 expansion:utility/add_count_from_score
execute unless items block ~ ~ ~ container.15 * run function expansion:blocks/fabricator/printing/insert_item

# reset the loader
execute if items block ~ ~ ~ container.16 jigsaw[custom_data~{gui_item:1b}] run data modify block ~ ~ ~ Items[{Slot:16b}].components.minecraft:custom_model_data.floats[0] set value 0f

# check if there are any items left in the printer and restart the print if true
function expansion:blocks/fabricator/printing/check_remaining