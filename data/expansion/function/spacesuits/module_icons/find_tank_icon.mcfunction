# >>> generated function callers >>>
# Callers for expansion:spacesuits/module_icons/find_tank_icon
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/module_icons/display_icon (1 caller) [OK same-folder]
# <<< generated function callers <<<

# calculate the current oxygen percentage
execute store result score #input exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.lvl
execute store result score #max exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.max
function expansion:utilities/percentage

execute if score #output exp.percentage matches ..5 run return run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2 set value "廓"
execute if score #output exp.percentage matches 6..15 run return run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2 set value "度"
execute if score #output exp.percentage matches 16..25 run return run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2 set value "拓"
execute if score #output exp.percentage matches 26..35 run return run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2 set value "糖"
execute if score #output exp.percentage matches 36..40 run return run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2 set value "宅"
execute if score #output exp.percentage matches 40..50 run return run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2 set value "洞"
execute if score #output exp.percentage matches 50..60 run return run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2 set value "暴"
execute if score #output exp.percentage matches 60..70 run return run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2 set value "輻"
execute if score #output exp.percentage matches 70..80 run return run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2 set value "行"
execute if score #output exp.percentage matches 80..90 run return run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2 set value "降"
execute if score #output exp.percentage matches 90..100 run return run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2 set value "見"

# reset scores to be neat and tidy
scoreboard players reset #input exp.math
scoreboard players reset #max exp.math
scoreboard players reset #tier exp.math