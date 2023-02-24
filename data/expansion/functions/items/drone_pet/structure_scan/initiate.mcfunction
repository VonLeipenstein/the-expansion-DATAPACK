tag @s remove exp.located_structure

execute store result score @s exp.distance run locate structure #expansion:drone_locate

execute if score @s exp.distance matches 1..1000 run function expansion:items/drone_pet/structure_scan/calculate_offset

execute unless score @s exp.distance matches 1..1000 run say There are no nearby structures