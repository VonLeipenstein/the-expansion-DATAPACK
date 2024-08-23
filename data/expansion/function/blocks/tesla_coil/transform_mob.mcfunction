execute if entity @s[type=minecraft:creeper] run summon minecraft:creeper ~ ~ ~ {powered:1b}
execute if entity @s[type=minecraft:pig] run summon minecraft:zombified_piglin ~ ~ ~
execute if entity @s[type=minecraft:villager] run summon minecraft:witch ~ ~ ~
execute if entity @s[type=minecraft:turtle] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bowl",count:1}}
execute if entity @s[type=minecraft:mooshroom,nbt={Type:"red"}] run summon minecraft:mooshroom ~ ~ ~ {Type:"brown"}
execute if entity @s[type=minecraft:mooshroom,nbt={Type:"brown"}] run summon minecraft:mooshroom ~ ~ ~ {Type:"red"}

function expansion:utilities/erase_entity