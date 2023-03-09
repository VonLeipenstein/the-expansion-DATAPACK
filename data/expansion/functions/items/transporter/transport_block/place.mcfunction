function expansion:utilities/raycast/placement/initiate
execute as @e[type=marker,tag=exp.ray,distance=..5,limit=1,sort=nearest] at @s align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["exp.transporter","exp.room_origin"]}
execute at @e[type=armor_stand,tag=exp.transporter,limit=1,sort=nearest] run summon interaction ~ ~ ~ {Tags:["exp.transporter_rcdet"]}
execute at @e[type=marker,tag=exp.ray,distance=..5,limit=1,sort=nearest] run item replace entity @e[type=armor_stand,tag=exp.transporter,limit=1,sort=nearest] armor.head from entity @s weapon.mainhand
execute at @e[type=marker,tag=exp.ray,distance=..5,limit=1,sort=nearest] run data modify entity @e[type=armor_stand,tag=exp.room_return,limit=1,sort=nearest] ArmorItems[0].tag.transport_pos set from entity @s ArmorItems[3].tag.transport_pos
execute at @e[type=marker,tag=exp.ray,distance=..5,limit=1,sort=nearest] if entity @e[type=minecraft:armor_stand,tag=exp.transporter,distance=..1] run item replace entity @s weapon.mainhand with minecraft:air
execute as @e[type=marker,tag=exp.ray,limit=1,sort=nearest] run kill @s