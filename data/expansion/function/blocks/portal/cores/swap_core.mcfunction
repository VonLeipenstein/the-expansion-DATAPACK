# stop the interaction if the player is holding an identical core to the one already in the slot
scoreboard players reset #temp exp.hold_value
execute on passengers on origin if predicate expansion:nbt_checks/portal/has_core store result score #temp exp.hold_value run data get entity @s item.components."minecraft:custom_data".core_id
execute if score #temp exp.counter_1 = #temp exp.hold_value run return fail

# remove the old core
execute on passengers on origin if predicate expansion:nbt_checks/portal/has_core run function expansion:blocks/portal/cores/take_core

# insert the new core
execute if score #temp exp.counter_1 matches 1.. on passengers on origin run function expansion:blocks/portal/cores/insert_core
