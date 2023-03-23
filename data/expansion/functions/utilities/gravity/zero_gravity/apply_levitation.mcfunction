effect give @s minecraft:levitation 1 255 true

execute unless block ~ ~-2 ~ #expansion:expansion_air unless block ~ ~-3 ~ #expansion:expansion_air run effect clear @s[predicate=expansion:nbt_checks/armor/magnetic_boots] levitation
execute unless block ~ ~-0.1 ~ #expansion:expansion_air run effect clear @s levitation
execute if predicate expansion:utility/sneak run effect clear @s[predicate=expansion:nbt_checks/armor/space_equipment/equipment] levitation

