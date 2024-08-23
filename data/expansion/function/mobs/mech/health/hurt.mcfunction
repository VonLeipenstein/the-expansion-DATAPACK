scoreboard players operation @s exp.health -= @s exp.damage

execute store result bossbar exp.mech value run scoreboard players get @s exp.health

execute if score @s exp.health matches ..0 run function expansion:mobs/mech/health/die

scoreboard players set @s exp.damage 0