# >>> generated function callers >>>
# Callers for expansion:blocks/infuser/place/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/place (1 caller) [OK above +2]
# <<< generated function callers <<<

summon minecraft:item_display ~ ~1 ~ {Tags:["exp.infuser","exp.infuser.new","exp.block","smithed.block"],Passengers:[{id:"minecraft:marker"},{id:"minecraft:item_display",Tags:["exp.output"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[0,0,0]}}],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:item_model":"expansion:blocks/infuser"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1.001f,1.001f,1.001f],translation:[0f,-0.5f,0f]}}

execute positioned ~ ~1 ~ as @n[type=item_display,tag=exp.infuser.new,distance=..0.1] at @s positioned ~ ~-1 ~ run function expansion:blocks/infuser/place/setup