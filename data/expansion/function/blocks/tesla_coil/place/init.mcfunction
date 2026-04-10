# >>> generated function callers >>>
# Callers for expansion:blocks/tesla_coil/place/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/place (1 caller) [OK above +2]
# <<< generated function callers <<<

summon minecraft:item_display ~ ~1 ~ {Tags:["exp.tesla_coil","exp.tesla_coil.new","exp.block","smithed.block"],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:item_model":"expansion:blocks/tesla_turret"}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-0.5f,0.0f],scale:[1.001f,1.001f,1.001f]},Passengers:[{id:"minecraft:snowball",Invulnerable:1b,NoGravity:1b},{id:"minecraft:marker",Tags:["exp.block_fix"]},{id:"minecraft:interaction",Tags:["exp.tesla_hitbox"],width:0.5,height:1}]}

execute positioned ~ ~1 ~ as @n[type=minecraft:item_display,tag=exp.tesla_coil.new,distance=..0.01] positioned ~ ~-1 ~ run function expansion:blocks/tesla_coil/place/setup