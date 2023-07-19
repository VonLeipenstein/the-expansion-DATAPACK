execute as @e[type=minecraft:armor_stand,tag=exp.lunar_module,limit=1,sort=nearest] at @s run summon minecraft:interaction ~ ~2.5 ~0.7 {Tags:["exp.module_takeoff","exp.module_interactor","smithed.block"],width:1f,height:1f,response:1b}
item replace entity @e[type=minecraft:item_display,tag=exp.module_display,limit=1,sort=nearest] container.0 with minecraft:carrot_on_a_stick{CustomModelData:1012004} 1
item replace entity @s armor.head with minecraft:air

data merge entity @e[type=minecraft:item_display,tag=exp.module_display,limit=1,sort=nearest] {transformation:{translation:[0.0f,0.22f,0.0f],scale:[0.62f,0.62f,0.62f]}}

execute on passengers on passengers on passengers run tag @s remove exp.landing_moon