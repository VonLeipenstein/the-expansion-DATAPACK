# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/prepare/pivots
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/planetarium/place/setup (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# general tags
tag @s add exp.planetarium_pivot
tag @s add exp.planetarium_part
tag @s add smithed.block
execute on passengers run tag @s add exp.planetarium_part

# for each pivot summon a display
execute if entity @s[tag=exp.sun_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_sun","exp.new_planet_display"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox"],response:1b}]}
execute if entity @s[tag=exp.earth_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_earth","exp.new_planet_display"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox","planetarium_part"],response:1b},{id:"minecraft:text_display","alignment":"center",Tags:["exp.planetarium_text_display","exp.earth_name"],text:{color:"#03FF13",text:" Earth ",bold: true}}]}
execute if entity @s[tag=exp.moon_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_moon","exp.new_planet_display"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox","planetarium_part"],response:1b},{id:"minecraft:text_display","alignment":"center",Tags:["exp.planetarium_text_display","exp.moon_name"],text:{color:"#b3b3b3",text:"The Moon",bold: true}}]}
execute if entity @s[tag=exp.mars_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_mars","exp.new_planet_display"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox","planetarium_part"],response:1b},{id:"minecraft:text_display","alignment":"center",Tags:["exp.planetarium_text_display","exp.mars_name"],text:{color:"#ff3e03",text:" Mars ",bold: true}}]}
execute if entity @s[tag=exp.venus_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_venus","exp.new_planet_display"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox","planetarium_part"],response:1b},{id:"minecraft:text_display","alignment":"center",Tags:["exp.planetarium_text_display","exp.venus_name"],text:{color:"#ffa703",text:" Venus ",bold: true}}]}
execute if entity @s[tag=exp.jupiter_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_jupiter","exp.new_planet_display"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox","planetarium_part"],response:1b},{id:"minecraft:text_display","alignment":"center",Tags:["exp.planetarium_text_display","exp.jupiter_name"],text:{color:"#ff8903",text:" Jupiter ",bold: true}}]}
execute if entity @s[tag=exp.europa_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_europa","exp.new_planet_display"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox","planetarium_part"],response:1b},{id:"minecraft:text_display","alignment":"center",Tags:["exp.planetarium_text_display","exp.europa_name"],text:{color:"#e9cccc",text:" Europa ",bold: true}}]}

# make the sun pivot the root
execute if entity @s[tag=exp.sun_pivot] run function expansion:blocks/planetarium/set_root
tag @s[tag=exp.sun_pivot] add exp.true_pivot

# make snowballs invisible
execute on passengers run data merge entity @s[type=snowball] {NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}}
# link the snowballs of all the nodes
data modify storage expansion:planetarium_pivot data.current_UUID set from entity @s UUID
function expansion:blocks/planetarium/prepare/link_pivot_to_model
data remove storage expansion:planetarium_pivot data