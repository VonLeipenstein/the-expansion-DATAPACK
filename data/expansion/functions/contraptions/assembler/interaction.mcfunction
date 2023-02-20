execute unless entity @s[tag=exp.barrel_open] if block ~ ~ ~ minecraft:barrel[open=true] run function expansion:utilities/barrel_utility/open_barrel
execute if entity @s[tag=exp.barrel_open] if block ~ ~ ~ minecraft:barrel[open=false] run function expansion:utilities/barrel_utility/close_barrel

execute if entity @s[tag=exp.barrel_open] run function expansion:contraptions/assembler/crafting