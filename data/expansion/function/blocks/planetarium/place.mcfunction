summon minecraft:armor_stand ~ ~ ~ {Tags:["exp.planetarium"],Silent:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:2039583,Invisible:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:15,block:15},Tags:["exp.planetarium_sun","exp.planetarium_part","exp.planetarium_display","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_mercury","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_venus","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_earth","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_mars","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_jupiter","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_saturn","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_uranus","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_neptune","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_pluto","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_ceres","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_asteroids","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_amogus","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]}]}
execute as @e[type=minecraft:armor_stand,tag=exp.planetarium,limit=1,sort=nearest] at @s run function expansion:blocks/planetarium/prepare/setup

setblock ~ ~ ~ minecraft:cobblestone replace