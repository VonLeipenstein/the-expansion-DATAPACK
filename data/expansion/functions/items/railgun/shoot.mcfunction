# summon the ray
summon minecraft:marker ~ ~1.75 ~ {Tags:[exp.railgun_ray]}
tp @e[type=minecraft:marker,tag=exp.railgun_ray,limit=1,sort=nearest] @s
execute at @s anchored eyes run tp @e[type=minecraft:marker,tag=exp.railgun_ray,limit=1,sort=nearest] ^ ^ ^2

# shoot the ray and make sure you can't hit yourself
tag @s add exp.shooting
execute as @e[type=minecraft:marker,tag=exp.railgun_ray,limit=1,sort=nearest] at @s run function expansion:items/railgun/loop
tag @s remove exp.shooting

# create particle effect
execute at @s anchored eyes positioned ^ ^ ^9 run function expansion:items/railgun/shoot_particles1
execute at @s anchored eyes positioned ^ ^ ^6 run function expansion:items/railgun/shoot_particles2
execute at @s anchored eyes positioned ^ ^ ^3 run function expansion:items/railgun/shoot_particles3

# rotate the player a bit to simulate knockback from the gun
tp @s ~ ~ ~ ~ ~-2

# technical details
scoreboard players set @s exp.cooldown 15
scoreboard players remove @s exp.ammo 1
execute store result storage expansion:ammo data.ammo byte 1 run scoreboard players get @s exp.ammo
item modify entity @s weapon.mainhand expansion:railgun/ammo
