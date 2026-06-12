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

# mount the nearest rocket segment within range
ride @n[type=armor_stand,tag=exp.rocket_segment,distance=..1] mount @s

# assign a pad ID
scoreboard players add #global exp.pad_id 1
scoreboard players operation @s exp.pad_id = #global exp.pad_id

forceload add ~ ~