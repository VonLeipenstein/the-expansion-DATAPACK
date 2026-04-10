# >>> generated function callers >>>
# Callers for expansion:items/cargo_rocket_remote/use
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/rightclick/tools (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

# signal the assigned launch pad
execute store result score #search exp.pad_id run data get entity @s SelectedItem.components."minecraft:custom_data".pad_id

# check if the corresponding pad exists
execute unless entity @e[type=minecraft:item_display,tag=exp.launch_pad,predicate=expansion:compare_score/pad_id,limit=1] run return run say pad unavailable

# check if the corresponding pad has an available rocket
execute as @e[type=minecraft:item_display,tag=exp.launch_pad,predicate=expansion:compare_score/pad_id,limit=1] unless function expansion:blocks/launch_pad/has_rocket_ready run return run say rocket not available

# sky access of launchpad
execute as @e[type=minecraft:item_display,tag=exp.launch_pad,predicate=expansion:compare_score/pad_id,limit=1] at @s unless predicate expansion:location/sky_access run return run say launchpad requires sky access

# forceload the rocket chunk
forceload add ~ ~

# summon the beacon
summon minecraft:marker ~ ~ ~ {Tags:["exp.cargo_beacon"]}

scoreboard players operation @e[type=minecraft:marker,tag=exp.cargo_beacon,distance=..0.01,limit=1] exp.pad_id = #search exp.pad_id
execute as @e[type=minecraft:item_display,tag=exp.launch_pad,predicate=expansion:compare_score/pad_id,limit=1] on passengers if entity @s[tag=exp.cargo_rocket] run function expansion:items/cargo_rocket_remote/signal_rocket