## gravity credits to N0de#0001
execute if score @s exp.jump matches 1.. unless entity @s[predicate=expansion:nbt_checks/armor/magnetic_boots] run function expansion:utilities/gravity/low_gravity/jump
execute unless score @s exp.gravity_delay matches -11 run function expansion:utilities/gravity/low_gravity/float

execute unless block ~ ~2 ~ #expansion:expansion_air run scoreboard players set @s exp.gravity_delay -11
execute unless entity @s[predicate=expansion:nbt_checks/armor/magnetic_boots] run effect give @s minecraft:slow_falling 2 0 true
execute if entity @s[predicate=expansion:nbt_checks/armor/magnetic_boots] if block ~ ~-1 ~ #expansion:expansion_air if block ~ ~-2 ~ #expansion:expansion_air if block ~ ~-3 ~ #expansion:expansion_air run effect give @s minecraft:slow_falling 2 0 true
