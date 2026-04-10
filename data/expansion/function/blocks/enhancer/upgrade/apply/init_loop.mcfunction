# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/init_loop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/enhance (1 caller) [OK above +1]
# <<< generated function callers <<<

execute store result score #copy_module exp.max_range run data get storage expansion:temp ModStorage
scoreboard players set #temp exp.counter_1 0
function expansion:blocks/enhancer/upgrade/apply/storage_loop
scoreboard players reset #temp exp.counter_1
scoreboard players reset #copy_module exp.max_range