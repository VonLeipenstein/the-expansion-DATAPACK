# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/storage_loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/init_loop (1 caller) [OK same-folder]
# - function expansion:blocks/enhancer/upgrade/apply/storage_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# check the values for this entry
data remove storage expansion:temp allowed
scoreboard players add #temp exp.counter_1 1
execute if score #temp exp.counter_1 matches 1 if function expansion:blocks/enhancer/upgrade/apply/check_allowed/allowed run function expansion:blocks/enhancer/upgrade/apply/slot_1
execute if score #temp exp.counter_1 matches 2 if function expansion:blocks/enhancer/upgrade/apply/check_allowed/allowed run function expansion:blocks/enhancer/upgrade/apply/slot_2
execute if score #temp exp.counter_1 matches 3 if function expansion:blocks/enhancer/upgrade/apply/check_allowed/allowed run function expansion:blocks/enhancer/upgrade/apply/slot_3
execute if score #temp exp.counter_1 matches 4 if function expansion:blocks/enhancer/upgrade/apply/check_allowed/allowed run function expansion:blocks/enhancer/upgrade/apply/slot_4
execute if score #temp exp.counter_1 matches 5 if function expansion:blocks/enhancer/upgrade/apply/check_allowed/allowed run function expansion:blocks/enhancer/upgrade/apply/slot_5

# move to the next item in the array
function expansion:utilities/shift_modstorage_array
# repeat if we checked the entire array, and once more to restore it to its original state
execute if score #temp exp.counter_1 < #copy_module exp.max_range run return run function expansion:blocks/enhancer/upgrade/apply/storage_loop