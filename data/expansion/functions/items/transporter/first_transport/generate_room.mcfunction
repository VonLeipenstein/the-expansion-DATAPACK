fill ~-11 ~-1 ~-11 ~11 ~21 ~11 minecraft:barrier hollow

execute if block ~ ~-1 ~ minecraft:barrier run effect clear @p levitation
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove exp.room_generator
execute if block ~ ~-1 ~ minecraft:barrier run scoreboard players set @p exp.warmup 0