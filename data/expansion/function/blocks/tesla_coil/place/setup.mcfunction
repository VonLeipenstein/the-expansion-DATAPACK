# >>> generated function callers >>>
# Callers for expansion:blocks/tesla_coil/place/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/tesla_coil/place/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.tesla_coil.new

setblock ~ ~ ~ cobblestone{CustomName:{translate:"exp_blocks_teslacoil_name",color:"dark_gray"}} replace
setblock ~ ~1 ~ minecraft:redstone_torch keep

function expansion:blocks/set_rotation