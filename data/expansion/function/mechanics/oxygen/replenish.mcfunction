# replenish the compressors oxygen
execute if entity @s[type=minecraft:interaction] on vehicle run scoreboard players operation @s exp.oxygen_lvl = @s exp.oxygen_max

# replenishes the players oxygen supply infinitely
execute unless score @s exp.oxygen_lvl = @s exp.oxygen_max run scoreboard players operation @s exp.oxygen_lvl = @s exp.oxygen_max
