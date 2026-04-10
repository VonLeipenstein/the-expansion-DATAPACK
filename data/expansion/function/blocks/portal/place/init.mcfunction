# >>> generated function callers >>>
# Callers for expansion:blocks/portal/place/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/place (1 caller) [OK above +2]
# <<< generated function callers <<<

execute if entity @n[type=minecraft:item_display,tag=exp.portal,distance=..4] run return fail

summon minecraft:item_display ~ ~1 ~ {Tags:["exp.block","exp.portal","exp.portal.new","smithed.block"],Passengers:[{id:"minecraft:item_display",Tags:["exp.portal.warp_display"],item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:item_model":"expansion:blocks/portal",custom_model_data:{strings:["gateway"]}}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,1.01f,0.0f],scale:[0.0f,0.0f,0.0f]}},{id:"minecraft:interaction",Tags:["exp.portal_rcdet","smithed.block"],height:-1.1f,width:1.1f,response:1b},{id:"item_display",Tags:["exp.core_port","exp.port_1","smithed.block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.707f,0f,0f,0.707f],translation:[-1.69f,1.11f,0.24f],scale:[0.5f,0.5f,0.5f]}},{id:"item_display",Tags:["exp.core_port","exp.port_2","smithed.block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.654,0.269,0.269,0.654],translation:[-1.19f,2.31f,0.24f],scale:[0.5f,0.5f,0.5f]}},{id:"item_display",Tags:["exp.core_port","exp.port_3","smithed.block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.707f,0f,0f,0.707f],translation:[0.0f,2.8f,0.24f],scale:[0.5f,0.5f,0.5f]}},{id:"item_display",Tags:["exp.core_port","exp.port_4","smithed.block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.269,0.654,0.654,0.269],translation:[1.19f,2.31f,0.24f],scale:[-0.5f,-0.5f,0.5f]}},{id:"item_display",Tags:["exp.core_port","exp.port_5","smithed.block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.707f,0f,0f,0.707f],translation:[1.69f,1.11f,0.24f],scale:[0.5f,0.5f,0.5f]}}],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:item_model":"expansion:blocks/portal"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,1.01f,0.0f],scale:[2.0f,2.0f,2.0f]}}

execute positioned ~ ~1 ~ as @n[type=item_display,tag=exp.portal.new,distance=..0.1] at @s positioned ~ ~-1 ~ run function expansion:blocks/portal/place/setup