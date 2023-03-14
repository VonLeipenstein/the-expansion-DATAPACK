execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/compressor/destroy

execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{oxygen_tank:1b}}]} unless block ~ ~ ~ minecraft:dropper[facing=up,triggered=false]{Items:[{Slot:4b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{oxygen_tank:1b,tank_lvl:96000}}]} run function expansion:blocks/compressor/compress

execute unless entity @s[tag=exp.has_oxygen] if entity @e[type=minecraft:marker,tag=exp.oxygen_marker,distance=..1,limit=1,sort=nearest] run function expansion:blocks/oxygenator/give_oxygen

execute if entity @p[distance=..6] run function expansion:blocks/compressor/gui
