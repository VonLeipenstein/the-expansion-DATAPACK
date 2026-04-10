# >>> generated function callers >>>
# Callers for expansion:blocks/compressor/place/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/place (1 caller) [OK above +2]
# <<< generated function callers <<<

summon minecraft:item_display ~ ~1 ~ {Tags:["exp.compressor","exp.compressor.new","exp.block","smithed.block"],Passengers:[{id:interaction,Tags:["exp.compressor.rcdet","smithed.block"],CustomNameVisible:0b,CustomName:"Tank Here",width:1.0f,height:1.0f,response:1b}]}

execute positioned ~ ~1 ~ as @n[type=item_display,tag=exp.compressor.new,distance=..0.1] positioned ~ ~-1 ~ run function expansion:blocks/compressor/place/setup