execute if block ~1 ~-1 ~ minecraft:oak_sapling run setblock ~1 ~-1 ~ minecraft:short_grass replace
execute if block ~ ~-1 ~1 minecraft:oak_sapling run setblock ~ ~-1 ~1 minecraft:short_grass replace
execute if block ~ ~-1 ~ minecraft:oak_sapling run setblock ~ ~-1 ~ minecraft:short_grass replace
execute if block ~ ~-1 ~ minecraft:dandelion run setblock ~ ~-1 ~ minecraft:oak_sapling replace
execute if block ~ ~-1 ~ minecraft:poppy run setblock ~ ~-1 ~ minecraft:dandelion replace
execute if block ~ ~-1 ~ minecraft:fern run setblock ~ ~-1 ~ minecraft:poppy replace
execute if block ~ ~-1 ~ minecraft:short_grass run setblock ~ ~-1 ~ minecraft:fern replace
execute if block ~ ~-1 ~ minecraft:grass_block run setblock ~ ~ ~ minecraft:short_grass replace
execute if block ~ ~-1 ~ minecraft:red_sand run setblock ~ ~-1 ~ minecraft:grass_block replace
execute if block ~ ~-1 ~ minecraft:red_sandstone run setblock ~ ~-1 ~ minecraft:grass_block replace

kill @s