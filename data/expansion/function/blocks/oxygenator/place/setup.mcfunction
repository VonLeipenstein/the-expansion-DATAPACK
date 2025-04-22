tag @s remove exp.oxygenator.new

# merge the stored rotation
function expansion:blocks/set_rotation
execute rotated as @s on passengers run rotate @s ~ ~

# configure the block
setblock ~ ~ ~ minecraft:dropper{CustomName:{translate:"exp_blocks_oxygenator_name",color:"dark_gray"}} replace
function expansion:blocks/oxygenator/gui/main

# configure the displayed item
item replace entity @s contents from entity @p[tag=exp.tick_player,distance=..10] weapon.mainhand

# configure the wireframe
execute on passengers if entity @s[tag=exp.wireframe_display] run data merge entity @s {transformation:{scale:[0,0,0],translation:[0.0,-0.8,0.0]}}
execute on passengers if entity @s[tag=exp.wireframe_display] run loot replace entity @s contents loot expansion:items/gui/wireframe_red

# give a random id
execute store result score @s exp.unique_id run random value 1..2147483647

scoreboard players reset @s exp.counter_2