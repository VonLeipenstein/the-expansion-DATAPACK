execute positioned ^ ^-1 ^ run summon minecraft:armor_stand ^-1.69 ^0.42 ^ {Tags:["exp.core_port","exp.port_1","exp.portal_stand","smithed.block"],Marker:0b,DisabledSlots:2039583,NoGravity:1b,Invulnerable:1b,Invisible:1b}
execute positioned ^ ^-1 ^ run summon minecraft:armor_stand ^-1.02 ^1.69 ^ {Tags:["exp.core_port","exp.port_2","exp.portal_stand","smithed.block"],Marker:0b,DisabledSlots:2039583,Pose:{Head:[0f,0f,-45f]},NoGravity:1b,Invulnerable:1b,Invisible:1b}
execute positioned ^ ^-1 ^ run summon minecraft:armor_stand ^ ^2.115 ^ {Tags:["exp.core_port","exp.port_3","exp.portal_stand","smithed.block"],Marker:0b,DisabledSlots:2039583,NoGravity:1b,Invulnerable:1b,Invisible:1b}
execute positioned ^ ^-1 ^ run summon minecraft:armor_stand ^1.02 ^1.69 ^ {Tags:["exp.core_port","exp.port_4","exp.portal_stand","smithed.block"],Marker:0b,DisabledSlots:2039583,Pose:{Head:[0f,0f,45f]},NoGravity:1b,Invulnerable:1b,Invisible:1b}
execute positioned ^ ^-1 ^ run summon minecraft:armor_stand ^1.69 ^0.42 ^ {Tags:["exp.core_port","exp.port_5","exp.portal_stand","smithed.block"],Marker:0b,DisabledSlots:2039583,NoGravity:1b,Invulnerable:1b,Invisible:1b}

execute positioned ^ ^-1 ^ run summon minecraft:interaction ^ ^3.5 ^ {Tags:["exp.portal_core_rcdet","smithed.block"],width:0.6,height:0.6,response:1b}
execute positioned ^ ^-1 ^ run summon minecraft:interaction ^1.758 ^1.8 ^ {Tags:["exp.portal_core_rcdet","smithed.block"],width:0.6,height:0.6,response:1b}
execute positioned ^ ^-1 ^ run summon minecraft:interaction ^-1.758 ^1.8 ^ {Tags:["exp.portal_core_rcdet","smithed.block"],width:0.6,height:0.6,response:1b}
execute positioned ^ ^-1 ^ run summon minecraft:interaction ^-1.2 ^3.0 ^ {Tags:["exp.portal_core_rcdet","smithed.block"],width:0.6,height:0.6,response:1b}
execute positioned ^ ^-1 ^ run summon minecraft:interaction ^1.2 ^3.0 ^ {Tags:["exp.portal_core_rcdet","smithed.block"],width:0.6,height:0.6,response:1b}

summon minecraft:item_display ~ ~-1 ~ {Rotation:[0f,0f],Tags:["exp.portal_display"],item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012605},item_display:"head"}}
data merge entity @e[type=minecraft:item_display,tag=exp.portal_display,limit=1,sort=nearest] {transformation:{translation:[0.0f,2.01f,0.0f],scale:[-2f,2f,-2f]}}
data modify entity @e[type=minecraft:item_display,tag=exp.portal_display,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]

summon minecraft:interaction ~ ~-1 ~ {Tags:["exp.portal_rcdet","smithed.block"],height:1.1f,width:1.1f,response:1b}

execute as @e[type=minecraft:armor_stand,tag=exp.core_port,limit=5,sort=nearest] run data modify entity @s Rotation[0] set from entity @e[type=minecraft:armor_stand,tag=exp.portal_main,limit=1,sort=nearest] Rotation[0]

fill ^-1 ^-1 ^ ^1 ^-1 ^ minecraft:barrier keep
