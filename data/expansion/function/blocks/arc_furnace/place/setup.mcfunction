# >>> generated function callers >>>
# Callers for expansion:blocks/arc_furnace/place/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/arc_furnace/place/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.arc_furnace.new

function expansion:blocks/set_rotation

setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:{translate:"exp_blocks_arcfurnace_name",color:"dark_gray"}} replace