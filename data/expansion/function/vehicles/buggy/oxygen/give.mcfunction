scoreboard players add @s exp.oxygen_lvl 20
execute on vehicle run scoreboard players remove @s exp.oxygen_lvl 20

# correct overshoots
execute if score @s exp.oxygen_lvl > @s exp.oxygen_max run scoreboard players operation @s exp.oxygen_lvl = @s exp.oxygen_max
execute on vehicle if score @s exp.oxygen_lvl matches ..0 run scoreboard players set @s exp.oxygen_lvl 0