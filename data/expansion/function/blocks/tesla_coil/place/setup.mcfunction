tag @s remove exp.tesla_coil.new

setblock ~ ~ ~ cobblestone{CustomName:{translate:"exp_blocks_teslacoil_name",color:"dark_gray"}} replace
setblock ~ ~1 ~ minecraft:redstone_torch keep

function expansion:blocks/set_rotation