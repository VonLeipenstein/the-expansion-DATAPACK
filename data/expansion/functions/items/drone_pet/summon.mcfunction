summon minecraft:armor_stand ~ ~1 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["exp.pet_drone"],CustomName:'{"text":"Clinton"}',Passengers:[{id:"minecraft:interaction",Tags:["exp.pet_drone_rcdet"],response:1b,width:0.5f,height:0.5f}]}
tag @s add exp.has_active_drone
execute positioned ~ ~1 ~ run item replace entity @e[type=minecraft:armor_stand,tag=exp.pet_drone,distance=..0.01,limit=1,sort=nearest] armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with minecraft:air

playsound expansion:drone.error neutral @a ~ ~ ~