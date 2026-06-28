# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/place/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/place/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.launch_pad.new

function expansion:blocks/set_rotation

loot replace entity @s contents loot expansion:blocks/launch_pad

# assign a pad ID
scoreboard players add #global exp.pad_id 1
scoreboard players operation @s exp.pad_id = #global exp.pad_id

execute if dimension minecraft:overworld run scoreboard players operation @s exp.origin = #earth exp.gravity_id
execute if dimension expansion:moon run scoreboard players operation @s exp.origin = #moon exp.gravity_id
execute if dimension expansion:mars run scoreboard players operation @s exp.origin = #mars exp.gravity_id
execute if dimension expansion:venus run scoreboard players operation @s exp.origin = #venus exp.gravity_id

scoreboard players operation @s exp.destination = @s exp.origin
scoreboard players add @s exp.destination 1
function expansion:blocks/launch_control/interaction/button_left

# link to the nearest unlinked launch control
execute as @n[tag=exp.launch_control,predicate=!expansion:passengers/launchpad_link,distance=..10] run function expansion:blocks/launch_control/link_pad/link

forceload add ~ ~