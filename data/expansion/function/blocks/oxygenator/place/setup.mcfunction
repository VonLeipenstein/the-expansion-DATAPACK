tag @s remove exp.oxygenator.new

function expansion:blocks/set_rotation

execute rotated as @s on passengers run rotate @s ~ ~

setblock ~ ~ ~ minecraft:dropper{CustomName:{translate:"exp_blocks_oxygenator_name",color:"dark_gray"}} replace
function expansion:blocks/oxygenator/gui/main

execute on passengers if entity @s[tag=exp.wireframe_display] run data merge entity @s {transformation:{scale:[0,0,0],translation:[0.0,-0.8,0.0]}}
execute on passengers if entity @s[tag=exp.wireframe_display] run loot replace entity @s contents loot expansion:items/gui/wireframe_red

execute store result score @s exp.unique_id run random value 1..2147483647

scoreboard players reset @s exp.counter_2