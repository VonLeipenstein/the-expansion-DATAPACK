execute if entity @s[y_rotation=-135.1..-45] align xyz positioned ~.5 ~ ~.5 run function expansion:contraptions/portal/assembly/place_portal/place_portal_west
execute if entity @s[y_rotation=45.1..135] align xyz positioned ~.5 ~ ~.5 run function expansion:contraptions/portal/assembly/place_portal/place_portal_east
execute if entity @s[y_rotation=-45..45] align xyz positioned ~.5 ~ ~.5 run function expansion:contraptions/portal/assembly/place_portal/place_portal_north
execute if entity @s[y_rotation=135.1..-135] align xyz positioned ~.5 ~ ~.5 run function expansion:contraptions/portal/assembly/place_portal/place_portal_south
execute at @e[type=armor_stand,tag=exp.portal_bottom,limit=1,sort=nearest] run setblock ~ ~ ~ minecraft:barrier
execute run playsound minecraft:block.metal.place voice @s