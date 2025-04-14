tag @s remove exp.terraformer.new

function expansion:blocks/set_rotation

setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:{translate:"exp_blocks_terraformer_name",color:"dark_gray"}} replace
function expansion:blocks/terraformer/gui

scoreboard players set @s exp.counter_1 0
scoreboard players set @s exp.counter_2 1
scoreboard players set @s exp.bool 0