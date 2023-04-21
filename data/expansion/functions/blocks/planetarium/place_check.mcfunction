execute if entity @e[type=minecraft:armor_stand,tag=exp.planetarium,limit=1,sort=nearest,distance=..22] run function expansion:utilities/error_messages/planetarium_error
execute unless entity @s[tag=exp.planetarium_error] run function expansion:blocks/planetarium/place
tag @s[tag=exp.planetarium_error] remove exp.planetarium_error
