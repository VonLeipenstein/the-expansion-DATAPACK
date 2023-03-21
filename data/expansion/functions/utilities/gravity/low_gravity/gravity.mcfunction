## gravity credits to N0de#0001
# run the jump function when players arent weraing magnetic boots
execute if score @s[predicate=!expansion:nbt_checks/armor/magnetic_boots] exp.jump matches 1.. run function expansion:utilities/gravity/low_gravity/jump

# make players float slowly
execute unless score @s exp.gravity_delay matches -11 run function expansion:utilities/gravity/low_gravity/float

# make players descend when they bump their head to a block above
execute unless block ~ ~2 ~ #expansion:expansion_air run scoreboard players set @s exp.gravity_delay -11

# give players slow falling
effect give @s[predicate=!expansion:nbt_checks/armor/magnetic_boots] minecraft:slow_falling 2 0 true
execute if block ~ ~-1 ~ #expansion:expansion_air if block ~ ~-2 ~ #expansion:expansion_air if block ~ ~-3 ~ #expansion:expansion_air run effect give @s[predicate=expansion:nbt_checks/armor/magnetic_boots] minecraft:slow_falling 2 0 true
