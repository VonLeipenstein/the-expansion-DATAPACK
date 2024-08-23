# remove the exp.scanning tag, this tag will be reassigned by any markers. If it is not reassigned then it means that there are no more markers left which means that the room is filled and airtight
tag @s remove exp.scanning

# run the expand function at some of the oxygen markers
execute at @e[type=minecraft:marker,tag=exp.oxygen_marker,tag=!exp.scanned,limit=4,sort=furthest,distance=..19] run function expansion:blocks/oxygenator/oxygenate/fill_space/expand

# kill any markers that have no other markers near them
execute as @e[type=minecraft:marker,tag=exp.oxygen_marker,tag=exp.scanned,limit=4,sort=furthest,distance=..20] run function expansion:blocks/oxygenator/oxygenate/fill_space/kill_markers