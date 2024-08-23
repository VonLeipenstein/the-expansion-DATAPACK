summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["exp.transporter","exp.room_origin"]}
summon minecraft:interaction ~ ~ ~ {Tags:["exp.transporter_rcdet"],width:1.1,height:1.1}

item replace entity @n[type=minecraft:armor_stand,tag=exp.transporter] armor.head from entity @s weapon.mainhand
#data modify entity @e[type=minecraft:armor_stand,tag=exp.room_return,limit=1,sort=nearest] ArmorItems[0].components.minecraft:custom_data.transport_pos set from entity @s ArmorItems[3].components.minecraft:custom_data.transport_pos

scoreboard players reset #temp exp.unique_id
execute store result score #temp exp.unique_id run data get entity @n[type=minecraft:armor_stand,tag=exp.transporter] ArmorItems[3].components.minecraft:custom_data.room_id
execute if score #temp exp.unique_id matches -1 as @n[type=minecraft:armor_stand,tag=exp.transporter] run function expansion:blocks/transporter/give_score

summon text_display ~ ~ ~ {Tags:["exp.transporter_text1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.19f,0.65f,0.32f],scale:[0.8f,0.8f,0.8f]},text:'{"color":"aqua","score":{"name":"#temp","objective":"exp.unique_id"}}',background:-14935012}
summon text_display ~ ~ ~ {Tags:["exp.transporter_text2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.19f,0.65f,0.32f],scale:[0.8f,0.8f,0.8f]},text:'{"color":"aqua","score":{"name":"#temp","objective":"exp.unique_id"}}',background:-14935012}
summon text_display ~ ~ ~ {Tags:["exp.transporter_text3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.19f,0.65f,0.32f],scale:[0.8f,0.8f,0.8f]},text:'{"color":"aqua","score":{"name":"#temp","objective":"exp.unique_id"}}',background:-14935012}
summon text_display ~ ~ ~ {Tags:["exp.transporter_text4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.19f,0.65f,0.32f],scale:[0.8f,0.8f,0.8f]},text:'{"color":"aqua","score":{"name":"#temp","objective":"exp.unique_id"}}',background:-14935012}

execute as @n[tag=exp.transporter_text2,distance=..0.1] at @s run tp @s ~ ~ ~ ~90 0
execute as @n[tag=exp.transporter_text3,distance=..0.1] at @s run tp @s ~ ~ ~ ~180 0
execute as @n[tag=exp.transporter_text4,distance=..0.1] at @s run tp @s ~ ~ ~ ~270 0

setblock ~ ~ ~ minecraft:barrier