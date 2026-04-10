# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/place/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/place (1 caller) [OK above +2]
# <<< generated function callers <<<

summon minecraft:item_display ~ ~1 ~ {Tags:["exp.modstation","exp.modstation.new","exp.block","smithed.block"],Passengers:[{id:snowball,Tags:["exp.origin_link","exp.modstation.vehicle_link"],NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:jigsaw",count:1,components:{"minecraft:item_model":"expansion:empty"}}},{id:snowball,Tags:["exp.origin_link","exp.modstation.bot_link"],NoGravity:1b,Invulnerable:1b},{id:snowball,Tags:["exp.origin_link","exp.modstation.bot_link"],NoGravity:1b,Invulnerable:1b},{id:snowball,Tags:["exp.origin_link","exp.modstation.bot_link"],NoGravity:1b,Invulnerable:1b},{id:snowball,Tags:["exp.origin_link","exp.modstation.bot_link"],NoGravity:1b,Invulnerable:1b},{id:snowball,Tags:["exp.origin_link","exp.modstation.bot_link"],Item:{id:jigsaw,components:{item_model:"expansion:empty"},count:1},NoGravity:1b,Invulnerable:1b},{id:"minecraft:item_display",Tags:["exp.modstation_display"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5f,0.5f,0.5f],translation:[0f,0.3f,0f]}}],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:item_model":"expansion:blocks/modstation","minecraft:custom_data":{ModStorage:{blaster:{},speed:{},fuel:{},skin:{}}}}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1.001f,1.001f,1.001f],translation:[0f,-0.5f,0f]}}

execute positioned ~ ~1 ~ as @n[type=minecraft:item_display,tag=exp.modstation.new,distance=..0.01] positioned ~ ~-1 ~ run function expansion:blocks/modification_station/place/setup