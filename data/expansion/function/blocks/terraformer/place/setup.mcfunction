# >>> generated function callers >>>
# Callers for expansion:blocks/terraformer/place/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/terraformer/place/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.terraformer.new

function expansion:blocks/set_rotation

setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:{translate:"exp_blocks_terraformer_name",color:"dark_gray"}} replace
function expansion:blocks/terraformer/gui

scoreboard players set @s exp.counter_1 0
scoreboard players set @s exp.counter_2 1
scoreboard players set @s exp.bool 0