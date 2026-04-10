# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/check_allowed/init_loop
# Total callers: 5 from 5 source(s)
# Folder rule (function callers): 5/5 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/slot_1 (1 caller) [OK above +1]
# - function expansion:blocks/enhancer/upgrade/apply/slot_2 (1 caller) [OK above +1]
# - function expansion:blocks/enhancer/upgrade/apply/slot_3 (1 caller) [OK above +1]
# - function expansion:blocks/enhancer/upgrade/apply/slot_4 (1 caller) [OK above +1]
# - function expansion:blocks/enhancer/upgrade/apply/slot_5 (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players reset #allowed_slot exp.max_range
execute store result score #allowed_slot exp.max_range run data get storage expansion:temp allowed
return run function expansion:blocks/enhancer/upgrade/apply/check_allowed/storage_loop