summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["exp.transporter","exp.room_origin"]}
summon minecraft:interaction ~ ~ ~ {Tags:["exp.transporter_rcdet"],width:1.1,height:1.1}
item replace entity @e[type=minecraft:armor_stand,tag=exp.transporter,limit=1,sort=nearest] armor.head from entity @s weapon.mainhand
data modify entity @e[type=minecraft:armor_stand,tag=exp.room_return,limit=1,sort=nearest] ArmorItems[0].tag.transport_pos set from entity @s ArmorItems[3].tag.transport_pos
setblock ~ ~ ~ minecraft:barrier