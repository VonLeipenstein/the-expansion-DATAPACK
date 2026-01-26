execute unless predicate expansion:location/sky_access run return run say requires sky access

summon minecraft:item_display ~ ~ ~ {Tags:["exp.cargo_rocket_pad","exp.cargo_rocket_pad.new","exp.block","smithed.block"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},Passengers:[{id:"minecraft:snowball",Invulnerable:1b,NoGravity:1b},{id:"minecraft:interaction",Tags:["exp.cargo_rocket_pad_hitbox"],width:3.0,height:0.3}]}

execute positioned ~ ~ ~ as @n[type=minecraft:item_display,tag=exp.cargo_rocket_pad.new,distance=..0.01] positioned ~ ~ ~ run function expansion:blocks/cargo_rocket_pad/place/setup