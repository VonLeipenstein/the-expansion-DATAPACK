# remove markers that have no active neighbours
execute at @s unless entity @e[type=marker,tag=exp.new_scanner,distance=..1.01,limit=1] run kill @s