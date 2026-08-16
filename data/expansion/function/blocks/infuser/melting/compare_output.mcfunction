# >>> generated function callers >>>
# Callers for expansion:blocks/infuser/melting/compare_output
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/infuser/melting/check_output (1 caller) [OK same-folder]
# - function expansion:blocks/infuser/melting/melt (1 caller) [OK same-folder]
# <<< generated function callers <<<

data remove storage expansion:compare_item data
data modify storage expansion:compare_item data.item1 set from block ~ ~ ~ Items[{Slot:7b}]
data remove storage expansion:compare_item data.item1.Slot
data remove storage expansion:compare_item data.item1.count

execute on passengers run data modify storage expansion:compare_item data.item2 set from entity @s item
data remove storage expansion:compare_item data.item2.count

return run data modify storage expansion:compare_item data.item2 set from storage expansion:compare_item data.item1