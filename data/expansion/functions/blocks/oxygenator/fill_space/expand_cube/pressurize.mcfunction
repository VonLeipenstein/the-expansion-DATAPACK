# run functions 1 block further in all 6 directions if the block is air and if there isn't a marker already
execute positioned ~ ~1 ~ run function expansion:blocks/oxygenator/fill_space/check_new_pos
execute positioned ~ ~-1 ~ run function expansion:blocks/oxygenator/fill_space/check_new_pos
execute positioned ~1 ~ ~ run function expansion:blocks/oxygenator/fill_space/check_new_pos
execute positioned ~-1 ~ ~ run function expansion:blocks/oxygenator/fill_space/check_new_pos
execute positioned ~ ~ ~1 run function expansion:blocks/oxygenator/fill_space/check_new_pos
execute positioned ~ ~ ~-1 run function expansion:blocks/oxygenator/fill_space/check_new_pos

# tag the current marker with the exp.scanned tag so it can be killed when there are no markers near it
tag @e[type=minecraft:marker,limit=1,sort=nearest] add exp.scanned

# reassign the exp.scanning tag so the exp.scanning will continue
tag @s[tag=!exp.scanning] add exp.scanning