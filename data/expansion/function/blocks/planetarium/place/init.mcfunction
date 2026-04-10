# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/place/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/place (1 caller) [OK above +2]
# <<< generated function callers <<<

summon minecraft:item_display ~ ~1 ~ {Tags:["exp.planetarium","exp.planetarium.new","exp.planetarium_part"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-0.5f,0.0f],scale:[1.001f,1.001f,1.001f]},item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:item_model":"expansion:blocks/planetarium"}},Passengers:[{id:"minecraft:item_display",Tags:["exp.sun_pivot","exp.planetarium_pivot"],Passengers:[{id:"minecraft:snowball",NoGravity:1b,Invulnerable:1b}]},{id:"minecraft:item_display",Tags:["exp.earth_pivot","exp.planetarium_pivot"],Rotation:[90.0f,0.0f],Passengers:[{id:"minecraft:snowball",NoGravity:1b,Invulnerable:1b}]},{id:"minecraft:item_display",Tags:["exp.moon_pivot","exp.planetarium_pivot"],Passengers:[{id:"minecraft:snowball",NoGravity:1b,Invulnerable:1b}]},{id:"minecraft:item_display",Tags:["exp.mars_pivot","exp.planetarium_pivot"],Rotation:[180.0f,0.0f],Passengers:[{id:"minecraft:snowball",NoGravity:1b,Invulnerable:1b}]},{id:"minecraft:item_display",Tags:["exp.venus_pivot","exp.planetarium_pivot"],Rotation:[270.0f,0.0f],Passengers:[{id:"minecraft:snowball",NoGravity:1b,Invulnerable:1b}]},{id:"minecraft:item_display",Tags:["exp.jupiter_pivot","exp.planetarium_pivot"],Passengers:[{id:"minecraft:snowball",NoGravity:1b,Invulnerable:1b}]},{id:"minecraft:item_display",Tags:["exp.europa_pivot","exp.planetarium_pivot"],Passengers:[{id:"minecraft:snowball",NoGravity:1b,Invulnerable:1b}]}]}

execute positioned ~ ~1 ~ as @n[type=minecraft:item_display,tag=exp.planetarium.new,distance=..0.01] positioned ~ ~-1 ~ run function expansion:blocks/planetarium/place/setup