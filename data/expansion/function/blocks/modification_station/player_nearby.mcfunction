# detect if the player is using the block
execute unless entity @s[tag=exp.barrel_open] if block ~ ~ ~ minecraft:barrel[open=true] run function expansion:utilities/barrel/open_barrel
execute if entity @s[tag=exp.barrel_open] if block ~ ~ ~ minecraft:barrel[open=false] run function expansion:utilities/barrel/close_barrel

# run when the player is using the block
execute if entity @s[tag=exp.barrel_open] run function expansion:blocks/modification_station/interaction

# rotate the little hud vehicle
execute on passengers at @s run tp @s ~ ~ ~ ~1 ~
