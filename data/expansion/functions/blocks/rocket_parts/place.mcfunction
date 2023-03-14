summon minecraft:armor_stand ^ ^ ^ {Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["exp.rocket_part","exp.block","smithed.block"]}
item replace entity @e[type=minecraft:armor_stand,tag=exp.rocket_part,distance=..0.71] armor.head from entity @s weapon.mainhand
fill ~ ~ ~ ~ ~1 ~ minecraft:barrier keep

execute as @e[type=minecraft:armor_stand,tag=exp.rocket_part,distance=..0.71,limit=1,sort=nearest] run tag @s[nbt={ArmorItems:[{},{},{},{tag:{rocket_bottom:1b}}]}] add exp.rocket_bottom
execute as @e[type=minecraft:armor_stand,tag=exp.rocket_part,distance=..0.71,limit=1,sort=nearest] run tag @s[nbt={ArmorItems:[{},{},{},{tag:{rocket_cockpit:1b}}]}] add exp.rocket_cockpit
execute as @e[type=minecraft:armor_stand,tag=exp.rocket_part,distance=..0.71,limit=1,sort=nearest] run tag @s[nbt={ArmorItems:[{},{},{},{tag:{rocket_top:1b}}]}] add exp.rocket_top

execute facing ~ ~-1 ~ positioned ~ ~0.2 ~ run function expansion:blocks/rocket_parts/place_particles

execute as @e[type=minecraft:armor_stand,tag=exp.rocket_part,tag=exp.rocket_top,distance=..0.71,limit=1,sort=nearest] at @s positioned ~ ~-2 ~ if entity @e[type=minecraft:armor_stand,tag=exp.rocket_part,tag=exp.rocket_cockpit,distance=..0.5,limit=1,sort=nearest] positioned ~ ~-2 ~ if entity @e[type=minecraft:armor_stand,tag=exp.rocket_bottom,tag=exp.rocket_bottom,distance=..0.5,limit=1,sort=nearest] run function expansion:blocks/rocket_parts/create_rocket