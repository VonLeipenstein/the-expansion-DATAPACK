execute if entity @s[y_rotation=-135.1..-45] run summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Small:1b,Invisible:1b,DisabledSlots:2039583,Invulnerable:1b,Rotation:[0f,0f],Tags:["exp.moon_buggy","exp.vehicle","smithed.block"],Passengers:[{id:"minecraft:item_display",Tags:["exp.buggy_display"],item_display:"head",Passengers:[{id:"minecraft:interaction",Tags:["exp.buggy_rcdet","smithed.block"],height:-0.8f,width:1.7f,response:0b}]}]}
execute if entity @s[y_rotation=45.1..135] run summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Small:1b,Invisible:1b,DisabledSlots:2039583,Invulnerable:1b,Rotation:[180f,0f],Tags:["exp.moon_buggy","exp.vehicle","smithed.block"],Passengers:[{id:"minecraft:item_display",Tags:["exp.buggy_display"],item_display:"head",Passengers:[{id:"minecraft:interaction",Tags:["exp.buggy_rcdet","smithed.block"],height:-0.8f,width:1.7f,response:0b}]}]}
execute if entity @s[y_rotation=-45..45] run summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Small:1b,Invisible:1b,DisabledSlots:2039583,Invulnerable:1b,Rotation:[90f,0f],Tags:["exp.moon_buggy","exp.vehicle","smithed.block"],Passengers:[{id:"minecraft:item_display",Tags:["exp.buggy_display"],item_display:"head",Passengers:[{id:"minecraft:interaction",Tags:["exp.buggy_rcdet","smithed.block"],height:-0.8f,width:1.7f,response:0b}]}]}
execute if entity @s[y_rotation=135.1..-135] run summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Small:1b,Invisible:1b,DisabledSlots:2039583,Invulnerable:1b,Rotation:[270f,0f],Tags:["exp.moon_buggy","exp.vehicle","smithed.block"],Passengers:[{id:"minecraft:item_display",Tags:["exp.buggy_display"],item_display:"head",Passengers:[{id:"minecraft:interaction",Tags:["exp.buggy_rcdet","smithed.block"],height:-0.8f,width:1.7f,response:0b}]}]}

item replace entity @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand
data modify entity @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest] Rotation[0] set from entity @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] Rotation[0]
data merge entity @e[type=minecraft:item_display,tag=exp.buggy_display,limit=1,sort=nearest] {transformation:{translation:[0.0f,-0.1f,0.0f],scale:[0.43f,0.43f,0.43f]}}
execute store result score @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] exp.fuel_level run data get entity @s SelectedItem.tag.fuel_lvl
execute if predicate expansion:dimension/zero_gravity run data merge entity @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] {NoGravity:1b}

scoreboard players set @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] exp.fuel_max 129
scoreboard players set @e[type=minecraft:armor_stand,tag=exp.moon_buggy,limit=1,sort=nearest] exp.timer_1 1012007