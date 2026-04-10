# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/place/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/place (1 caller) [OK above +2]
# <<< generated function callers <<<

summon minecraft:item_display ~ ~1 ~ {Tags:["exp.oxygenator","exp.oxygenator.new","exp.block","smithed.block"],Passengers:[{id:"minecraft:text_display",Tags:["exp.oxygenator_text"],alignment:"center",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-0.65f,0.501f],scale:[0.4f,0.4f,0.4f]},text:[{text:"\nScans:\n",color:"green"},{score:{name:"@s",objective:'exp.hold_value'}},{text:"/100\n\n"}],background:0},{id:"minecraft:marker",Tags:["exp.sphere_display","smithed.block"]},{id:"item_display",Tags:["exp.wireframe_display"]}],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1.001f,1.001f,1.001f],translation:[0f,-0.5f,0f]}}

execute positioned ~ ~1 ~ as @n[type=minecraft:item_display,tag=exp.oxygenator.new,distance=..0.1] positioned ~ ~-1 ~ run function expansion:blocks/oxygenator/place/setup