# count the total number of passengers, if it is 0 it means that no new markers were able to be made, 
# meaning that the oxygenation was completed successfully
scoreboard players add #temp exp.hold_value 1

# stop the scan if this entity is out of range
execute positioned ~-10 ~-10 ~-10 unless entity @s[dx=20,dy=20,dz=20] run return run scoreboard players set #temp exp.hold_value 10000

# Scan surrounding blocks
execute if score @s exp.counter_1 matches 1.. at @s positioned ~ ~ ~1 \
        if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker
execute if score @s exp.counter_1 matches 1.. at @s positioned ~ ~ ~-1 \
        if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker
execute if score @s exp.counter_1 matches 1.. at @s positioned ~1 ~ ~ \
        if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker
execute if score @s exp.counter_1 matches 1.. at @s positioned ~-1 ~ ~ \
        if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker
execute if score @s exp.counter_1 matches 1.. at @s positioned ~ ~1 ~ \
        if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker
execute if score @s exp.counter_1 matches 1.. at @s positioned ~ ~-1 ~ \
        if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker

scoreboard players set @s exp.counter_1 0