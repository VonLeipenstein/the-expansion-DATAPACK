# >>> generated function callers >>>
# Callers for expansion:projectiles/railgun_bullet/bounce/bounce
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 3/3 honored
# Sources:
# - function expansion:projectiles/railgun_bullet/bounce/xplane (1 caller) [OK same-folder]
# - function expansion:projectiles/railgun_bullet/bounce/yplane (1 caller) [OK same-folder]
# - function expansion:projectiles/railgun_bullet/bounce/zplane (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players reset #temp2 exp.speed

# kill the projectile if it bounced too much
scoreboard players remove @s exp.counter_1 1
execute if score @s exp.counter_1 matches 0 run scoreboard players set @s exp.max_range 0

# vfx
particle explosion
particle end_rod ~ ~ ~ 0 0 0 0.05 20 force
playsound minecraft:item.trident.return player @a[distance=..40] ~ ~ ~