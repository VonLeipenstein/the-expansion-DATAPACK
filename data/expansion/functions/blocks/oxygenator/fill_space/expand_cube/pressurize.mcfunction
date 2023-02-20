# run functions 1 block further in all 6 directions if the block is air and if there isn't a marker already
execute positioned ~ ~1 ~ unless entity @e[type=marker,distance=..0.1,limit=1,sort=nearest] unless block ~ ~ ~ #expansion:airtight run function expansion:blocks/oxygenator/fill_space/summon_scanner
execute positioned ~ ~-1 ~ unless entity @e[type=marker,distance=..0.1,limit=1,sort=nearest] unless block ~ ~ ~ #expansion:airtight run function expansion:blocks/oxygenator/fill_space/summon_scanner
execute positioned ~1 ~ ~ unless entity @e[type=marker,distance=..0.1,limit=1,sort=nearest] unless block ~ ~ ~ #expansion:airtight run function expansion:blocks/oxygenator/fill_space/summon_scanner
execute positioned ~-1 ~ ~ unless entity @e[type=marker,distance=..0.1,limit=1,sort=nearest] unless block ~ ~ ~ #expansion:airtight run function expansion:blocks/oxygenator/fill_space/summon_scanner
execute positioned ~ ~ ~1 unless entity @e[type=marker,distance=..0.1,limit=1,sort=nearest] unless block ~ ~ ~ #expansion:airtight run function expansion:blocks/oxygenator/fill_space/summon_scanner
execute positioned ~ ~ ~-1 unless entity @e[type=marker,distance=..0.1,limit=1,sort=nearest] unless block ~ ~ ~ #expansion:airtight run function expansion:blocks/oxygenator/fill_space/summon_scanner

# give sentient entities a tag so they can breathe
execute if entity @s[tag=exp.pressurized] as @e[type=#expansion:sentient,tag=!exp.has_oxygen,distance=..1] run function expansion:blocks/oxygenator/give_oxygen
tag @e[type=#expansion:sentient,tag=!exp.inside_check,distance=..1] add exp.inside_check

execute if entity @s[tag=exp.pressurized] run tag @e[type=armor_stand,tag=exp.compressor,distance=..1,limit=1,sort=nearest] add exp.has_oxygen
tag @e[type=armor_stand,tag=exp.compressor,distance=..1,limit=1,sort=nearest] add exp.inside_check

# tag the current marker with the exp.scanned tag so it can be killed when there are no markers near it
tag @e[type=marker,limit=1,sort=nearest] add exp.scanned 

# reassign the exp.scanning tag so the exp.scanning will contitue. we did another succesful scan after all
tag @s add exp.scanning
