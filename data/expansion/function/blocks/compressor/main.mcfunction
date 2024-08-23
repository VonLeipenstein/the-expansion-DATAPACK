execute unless block ~ ~ ~ minecraft:cobblestone run function expansion:blocks/compressor/destroy

execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/compressor/compress/main

execute unless entity @s[tag=exp.has_oxygen] positioned ~ ~1 ~ if entity @e[type=minecraft:marker,tag=exp.oxygen_marker,distance=..1.5,limit=1,sort=nearest] if entity @e[type=armor_stand,tag=exp.oxygenator,tag=exp.pressurized,distance=..20,limit=1,sort=nearest] run function expansion:blocks/compressor/give_oxygen