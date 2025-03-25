# reset score
scoreboard players reset #temp exp.hold_value
scoreboard players reset #temp exp.oxygen_lvl

# expand scan layer
execute positioned ~-11 ~-11 ~-11 as @e[type=item_display,tag=exp.oxygen_marker,scores={exp.delay=1..},predicate=expansion:compare_score/unique_id,dx=22,dy=22,dz=22,limit=300] run function expansion:blocks/oxygenator/oxygenate/fill_space/main
# kill previous layer
execute positioned ~-11 ~-11 ~-11 run kill @e[type=item_display,tag=exp.oxygen_marker,scores={exp.delay=0},predicate=expansion:compare_score/unique_id,dx=22,dy=22,dz=22,limit=100]

# establish an oxygen link if an eligible entity was found
# can only happen once a tick
execute if score #temp exp.oxygen_lvl matches 1 summon snowball run function expansion:blocks/oxygenator/oxygenate/oxygen_link/finish
scoreboard players reset #temp exp.oxygen_lvl

# reset the score that keeps track of the amount of currently present scanners
scoreboard players operation @s exp.hold_value = #temp exp.hold_value

# merge the number of current scans with the score of the text display
execute on passengers if entity @s[type=text_display] run function expansion:blocks/oxygenator/gui/text_display/merge_scan_score

# run when a scan finishes for whatever reason
execute store result score @s exp.bool run function expansion:blocks/oxygenator/oxygenate/scan/check_valid
execute if score @s exp.bool matches 1.. run function expansion:blocks/oxygenator/oxygenate/scan/finish
