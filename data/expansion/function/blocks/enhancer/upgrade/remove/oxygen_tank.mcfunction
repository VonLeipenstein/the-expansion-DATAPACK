# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/remove/oxygen_tank
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/remove/effects (1 caller) [OK same-folder]
# <<< generated function callers <<<

# calculate the current oxygen percentage
execute store result score #input exp.math run data get storage expansion:temp RemovedModule.components."minecraft:custom_data".oxygen.lvl
execute store result score #max exp.math run data get storage expansion:temp RemovedModule.components."minecraft:custom_data".oxygen.max
execute store result score #temp exp.percentage run function expansion:utilities/percentage

# The Slot is a pain in the ass to handle
# store the original slot
scoreboard players reset #temp exp.value
execute store result score #temp exp.value run data get storage expansion:temp RemovedModule.Slot
# set the slot to 0, where the item modification happens
data modify storage expansion:temp RemovedModule.Slot set value 0
# copy the item from storage to the slot
data modify block ~ ~ ~ Items[{Slot:0b}] set from storage expansion:temp RemovedModule
# merge the percentage to lore
item modify block ~ ~ ~ container.0 expansion:oxygen_tank/merge_oxygen_percent_from_score
# copy the item back to the storage
data modify storage expansion:temp RemovedModule set from block ~ ~ ~ Items[{Slot:0b}]
# restore the original slot
execute store result storage expansion:temp RemovedModule.Slot byte 1 run scoreboard players get #temp exp.value
# replace the item in the slot with gui filler (DONT REMOVE THE ITEM)
loot replace block ~ ~ ~ container.0 loot expansion:items/gui/filler