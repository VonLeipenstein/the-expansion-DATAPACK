# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/fill_space/init_marker
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players operation @s exp.unique_id = #search exp.unique_id

# render glass cubes if the togle for visible air is set to true
execute if score #temp exp.value matches 1 run function expansion:blocks/oxygenator/oxygenate/fill_space/show_marker

tag @s add exp.oxygen_marker

# set the markers lifetime in ticks
scoreboard players set @s exp.delay 2

# determined maximum amount of blocks the marker can scan during its lifetime
scoreboard players set @s exp.counter_1 4
execute if score #temp exp.bool matches 1 run scoreboard players set @s exp.counter_1 6