kill @e[type=minecraft:interaction,tag=exp.module_takeoff,limit=1,sort=nearest]
playsound expansion:lunarmodule.launch player @p ~ ~ ~
particle flame ~ ~2 ~ 0 0 0 0.2 200
particle minecraft:cloud ~ ~2 ~ 0 0 0 0.3 300
title @p subtitle {"text":"Do not leave the lunar module from now on.","color":"gold","bold":true}

tp @s ~ ~4 ~
effect give @s minecraft:levitation infinite 20 true

# summon a new module part to be the bottom
execute unless entity @e[type=minecraft:armor_stand,tag=exp.module_bottom,distance=0.1,limit=1,sort=nearest] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,Tags:["exp.module_bottom"],Passengers:[{id:"minecraft:item_display",Tags:["exp.mbottom_display"],item_display:"head",Passengers:[{id:"minecraft:interaction",Tags:["exp.modulebottom_rcdet","smithed.block","exp.module_interactor"],width:3f,height:1.5f,response:0b}],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":1012020}}}],DisabledSlots:2039583}
execute as @e[type=minecraft:armor_stand,tag=exp.module_bottom,limit=1,sort=nearest] on passengers run data merge entity @s {transformation:{translation:[0.0f,0.22f,0.0f],scale:[0.62f,0.62f,0.62f]}}

# make the current module the module top
execute on passengers run data modify entity @s item.components.minecraft:custom_model_data set value 1012021
tag @s add exp.module_top