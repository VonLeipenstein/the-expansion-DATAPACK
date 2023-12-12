execute unless entity @s[tag=exp.barrel_open] if block ~ ~ ~ minecraft:barrel[open=true] run function expansion:utilities/barrel/open_barrel
execute if entity @s[tag=exp.barrel_open] if block ~ ~ ~ minecraft:barrel[open=false] run function expansion:utilities/barrel/close_barrel

execute if entity @s[tag=exp.barrel_open] run function expansion:blocks/assembler/crafting