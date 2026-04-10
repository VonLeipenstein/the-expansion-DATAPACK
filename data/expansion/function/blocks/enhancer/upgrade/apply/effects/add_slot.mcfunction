# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/effects/add_slot
# Total callers: 4 from 4 source(s)
# Folder rule (function callers): 4/4 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/slot_1 (1 caller) [OK above +1]
# - function expansion:blocks/enhancer/upgrade/apply/slot_2 (1 caller) [OK above +1]
# - function expansion:blocks/enhancer/upgrade/apply/slot_3 (1 caller) [OK above +1]
# - function expansion:blocks/enhancer/upgrade/apply/slot_4 (1 caller) [OK above +1]
# <<< generated function callers <<<

# ugly but functional, never gonna touch this again anyway
execute if score #temp exp.counter_1 matches 1 run data modify storage expansion:temp ModStorage insert 0 value {}
execute if score #temp exp.counter_1 matches 2 run data modify storage expansion:temp ModStorage insert 1 value {}
execute if score #temp exp.counter_1 matches 3 run data modify storage expansion:temp ModStorage insert 2 value {}
execute if score #temp exp.counter_1 matches 4 run data modify storage expansion:temp ModStorage insert 3 value {}

execute if score #temp exp.counter_1 matches 1 run item modify block ~ ~ ~ container.12 expansion:utility/reduce_count
execute if score #temp exp.counter_1 matches 2 run item modify block ~ ~ ~ container.13 expansion:utility/reduce_count
execute if score #temp exp.counter_1 matches 3 run item modify block ~ ~ ~ container.14 expansion:utility/reduce_count
execute if score #temp exp.counter_1 matches 4 run item modify block ~ ~ ~ container.15 expansion:utility/reduce_count

# add to the score so adding multiple slots at once doesn't work
scoreboard players add #copy_module exp.max_range 1