# Creates a link between two entities by giving them each a passenger snowball which' origin links to the others' vehicle.
# Should be run as the origin
data modify storage expansion:snowball_link link.source set from entity @s UUID

summon snowball ~ ~ ~ {Tags:["exp.origin_link","exp.origin_link.new","exp.source_link"],NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:jigsaw",count:1,components:{"minecraft:item_model":"expansion:empty"}}}
summon snowball ~ ~ ~ {Tags:["exp.origin_link","exp.origin_link.new","exp.target_link"],NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:jigsaw",count:1,components:{"minecraft:item_model":"expansion:empty"}}}

data modify entity @n[type=snowball,tag=exp.origin_link.new,tag=exp.source_link] Owner set from storage expansion:snowball_link link.target
ride @n[type=snowball,tag=exp.origin_link.new,tag=exp.source_link] mount @s

data modify entity @n[type=snowball,tag=exp.origin_link.new,tag=exp.target_link] Owner set from storage expansion:snowball_link link.source
execute on passengers if entity @s[tag=exp.source_link] on origin run ride @n[type=snowball,tag=exp.origin_link.new,tag=exp.target_link] mount @s

execute on passengers if entity @s[tag=exp.source_link,tag=exp.origin_link.new] on origin on passengers if entity @s[tag=exp.target_link,tag=exp.origin_link.new] run tag @s remove exp.origin_link.new
execute on passengers if entity @s[tag=exp.source_link,tag=exp.origin_link.new] run tag @s remove exp.origin_link.new

data remove storage expansion:snowball_link input