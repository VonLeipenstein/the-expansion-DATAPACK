scoreboard players remove @s[type=player,scores={exp.fuel_level=1..}] exp.fuel_level 30
execute if score @s exp.fuel_level matches ..0 run scoreboard players set @s exp.fuel_level 0

particle minecraft:firework ~ ~1 ~ 0 0 0 0.1 100 force