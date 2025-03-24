tag @s remove exp.oxygenator.new

function expansion:blocks/set_rotation

execute rotated as @s on passengers run rotate @s ~ ~

setblock ~ ~ ~ minecraft:dropper{CustomName:'{"translate":"exp_blocks_oxygenator_name","color":"dark_gray"}'} replace
function expansion:blocks/oxygenator/gui/main

execute store result score @s exp.unique_id run random value 1..2147483647

scoreboard players set @s exp.bool 0