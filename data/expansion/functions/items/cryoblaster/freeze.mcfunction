# creates ice blocks
execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
fill ~-1 ~-1 ~-1 ~1 ~2 ~1 packed_ice replace #expansion:expansion_air
fill ~1 ~2 ~1 ~1 ~1 ~1 air replace packed_ice
fill ~-1 ~2 ~1 ~-1 ~2 ~1 air replace packed_ice
fill ~1 ~2 ~-1 ~1 ~2 ~-1 air replace packed_ice
fill ~-1 ~1 ~-1 ~-1 ~2 ~-1 air replace packed_ice
fill ~ ~3 ~ ~ ~3 ~ packed_ice replace #expansion:expansion_air

tag @s remove exp.freeze
particle minecraft:poof ~ ~1.5 ~ 1 1 1 0 100
playsound block.lava.extinguish master @a ~ ~ ~ 1 2

