# >>> generated function callers >>>
# Callers for expansion:items/railgun/shoot
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:mobs/martian/ranged/shooting/shoot (1 caller) [WARN side/down 6]
# - function expansion:utilities/warmup/finish (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

function expansion:items/railgun/get_ammo
scoreboard players remove #temp exp.ammo 1

# cast the ray
execute rotated as @s anchored eyes positioned ^ ^ ^2 summon minecraft:item_display run function expansion:projectiles/railgun_bullet/cast

# create particle effect
execute at @s anchored eyes positioned ^ ^ ^9 run function expansion:items/railgun/particles/inner
execute at @s anchored eyes positioned ^ ^ ^6 run function expansion:items/railgun/particles/middle
execute at @s anchored eyes positioned ^ ^ ^3 run function expansion:items/railgun/particles/outer

# rotate the player a bit to simulate knockback from the gun
rotate @s ~ ~-4

# merge the ammo value with the item
execute store result storage expansion:ammo data.ammo byte 1 run scoreboard players get #temp exp.ammo
item modify entity @s weapon.mainhand expansion:railgun/ammo

# set a cooldown to prevent from shooting again
scoreboard players operation @s exp.cooldown = #railgun_cooldown exp.cooldown