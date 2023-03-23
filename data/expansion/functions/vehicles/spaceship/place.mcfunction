execute if entity @s[y_rotation=-135.1..-45] run summon minecraft:armor_stand ^ ^ ^ {NoGravity:0b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["exp.spaceship","exp.vehicle","smithed.block"],Rotation:[0.0f,0.0f],DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",Tags:["exp.spaceship_display"],item_display:"head",Passengers:[{id:"minecraft:interaction",Tags:["exp.spaceship_rcdet"],width:2f,height:2f,response:0b}]}]}
execute if entity @s[y_rotation=45.1..135] run summon minecraft:armor_stand ^ ^ ^ {NoGravity:0b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["exp.spaceship","exp.vehicle","smithed.block"],Rotation:[180.0f,0.0f],DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",Tags:["exp.spaceship_display"],item_display:"head",Passengers:[{id:"minecraft:interaction",Tags:["exp.spaceship_rcdet"],width:2f,height:2f,response:0b}]}]}
execute if entity @s[y_rotation=-45..45] run summon minecraft:armor_stand ^ ^ ^ {NoGravity:0b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["exp.spaceship","exp.vehicle","smithed.block"],Rotation:[90.0f,0.0f],DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",Tags:["exp.spaceship_display"],item_display:"head",Passengers:[{id:"minecraft:interaction",Tags:["exp.spaceship_rcdet"],width:2f,height:2f,response:0b}]}]}
execute if entity @s[y_rotation=135.1..-135] run summon minecraft:armor_stand ^ ^ ^ {NoGravity:0b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["exp.spaceship","exp.vehicle","smithed.block"],Rotation:[270.0f,0.0f],DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",Tags:["exp.spaceship_display"],item_display:"head",Passengers:[{id:"minecraft:interaction",Tags:["exp.spaceship_rcdet"],width:2f,height:2f,response:0b}]}]}

item replace entity @e[type=minecraft:item_display,tag=exp.spaceship_display,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand
data merge entity @e[type=minecraft:item_display,tag=exp.spaceship_display,limit=1,sort=nearest] {transformation:{translation:[0.0f,2.0f,0.0f],scale:[-0.7f,0.7f,-0.7f]}}
data modify entity @e[type=minecraft:item_display,tag=exp.spaceship_display,limit=1,sort=nearest] Rotation[0] set from entity @e[type=minecraft:armor_stand,tag=exp.spaceship,limit=1,sort=nearest] Rotation[0]
execute as @e[type=minecraft:item_display,tag=exp.spaceship_display,limit=1,sort=nearest] run function expansion:vehicles/spaceship/model_switching/increase_model
execute if predicate expansion:dimension/zero_gravity run data merge entity @e[type=minecraft:armor_stand,tag=exp.spaceship,limit=1,sort=nearest] {NoGravity:1b}

execute store result score @e[type=minecraft:armor_stand,tag=exp.spaceship,limit=1,sort=nearest] exp.fuel_level run data get entity @s SelectedItem.tag.fuel_lvl
scoreboard players set @e[type=minecraft:armor_stand,tag=exp.spaceship,limit=1,sort=nearest] exp.fuel_max 256
scoreboard players set @e[type=minecraft:armor_stand,tag=exp.spaceship,limit=1,sort=nearest] exp.speed 10