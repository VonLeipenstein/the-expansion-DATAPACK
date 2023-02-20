effect give @s[predicate=!expansion:nbt_checks/armor/magnetic_boots] slow_falling 1 0 true
execute if block ~ ~-1 ~ #expansion:expansion_air if block ~ ~-2 ~ #expansion:expansion_air if block ~ ~-3 ~ #expansion:expansion_air run effect give @s[predicate=expansion:nbt_checks/armor/magnetic_boots] slow_falling 1 0 true
execute unless block ~ ~-0.1 ~ air run tag @s remove exp.falling
