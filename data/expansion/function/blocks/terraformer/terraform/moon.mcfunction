# >>> generated function callers >>>
# Callers for expansion:blocks/terraformer/terraform/moon
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 3/3 honored
# Sources:
# - function expansion:blocks/terraformer/terraform/cube (1 caller) [OK same-folder]
# - function expansion:blocks/terraformer/terraform/init (1 caller) [OK same-folder]
# - function expansion:blocks/terraformer/terraform/sphere (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if block ~ ~-1 ~ minecraft:oak_sapling run setblock ~ ~-1 ~ minecraft:short_grass replace
execute if block ~ ~-1 ~ minecraft:dandelion run setblock ~ ~-1 ~ minecraft:oak_sapling replace
execute if block ~ ~-1 ~ minecraft:poppy run setblock ~ ~-1 ~ minecraft:dandelion replace
execute if block ~ ~-1 ~ minecraft:fern run setblock ~ ~-1 ~ minecraft:poppy replace
execute if block ~ ~-1 ~ minecraft:short_grass run setblock ~ ~-1 ~ minecraft:fern replace
execute if block ~ ~-1 ~ minecraft:grass_block run setblock ~ ~ ~ minecraft:short_grass replace
execute if block ~ ~-1 ~ minecraft:light_gray_concrete_powder run setblock ~ ~-1 ~ minecraft:grass_block replace

particle minecraft:happy_villager ~ ~ ~ .5 0 .5 0 20 force

kill @s