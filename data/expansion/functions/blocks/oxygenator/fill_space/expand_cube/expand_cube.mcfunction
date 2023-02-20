# remove the exp.scanning tag, this tag will be reassigned by the expansion:blocks/oxygenator/fill_space/expand_cube/expand function if it runs. If it is not reassigned then it means that there are no more markers left which means that the room is filled and airtight
tag @s remove exp.scanning

# run the expand function as all the oxygen markers
execute at @e[type=marker,tag=exp.oxygen_marker,tag=!exp.scanned,distance=..19,limit=4,sort=furthest] run function expansion:blocks/oxygenator/fill_space/expand_cube/pressurize

# kill 
execute as @e[type=marker,tag=exp.oxygen_marker,tag=exp.scanned,distance=..20,limit=4,sort=furthest] run function expansion:blocks/oxygenator/fill_space/expand_cube/kill_markers