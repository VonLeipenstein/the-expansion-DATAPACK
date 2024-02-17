## gravity credits to N0de#0001
# jump function
execute if score @s exp.jump matches 1.. run function expansion:mechanics/gravity/low_gravity/jump

# make players float slowly
execute unless score @s exp.gravity_delay matches -11 run function expansion:mechanics/gravity/low_gravity/float

# make players descend when they bump their head to a block above
execute unless block ~ ~2 ~ #expansion:air run scoreboard players set @s exp.gravity_delay -11

# give players slow falling
effect give @s minecraft:slow_falling 2 0 true