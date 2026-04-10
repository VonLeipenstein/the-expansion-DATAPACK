# >>> generated function callers >>>
# Callers for expansion:mobs/evil_drone/ranged_drone/fire
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/evil_drone/ranged_drone/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute at @p facing ~ ~1 ~ at @s positioned ~ ~.5 ~ summon minecraft:marker run function expansion:projectiles/drone_laser/cast

playsound expansion:spaceship.blaster player @a ~ ~ ~ 3 1 0.01

scoreboard players set @s exp.timer_1 0