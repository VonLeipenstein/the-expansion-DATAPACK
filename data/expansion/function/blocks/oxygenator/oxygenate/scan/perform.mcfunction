# Expand scan layer
execute as @e[type=item_display,tag=exp.oxygen_marker,scores={exp.delay=1..},predicate=expansion:compare_score/unique_id,distance=..20,limit=300] run function expansion:blocks/oxygenator/oxygenate/fill_space/main
# Kill previous layer
kill @e[type=item_display,tag=exp.oxygen_marker,scores={exp.delay=0},predicate=expansion:compare_score/unique_id,distance=..20,limit=100]

# Establish an oxygen link if an eligible entity was found
# Only one link can be added per tick
execute if score #temp exp.oxygen_lvl matches 1 summon snowball run function expansion:blocks/oxygenator/oxygenate/oxygen_link/finish
scoreboard players reset #temp exp.oxygen_lvl

# score that keeps track of the amount of currently present scanners
scoreboard players operation @s exp.hold_value = #temp exp.hold_value
# store the total amount of scanners
execute if score @s exp.hold_value > @s exp.counter_1 run scoreboard players operation @s exp.counter_1 = @s exp.hold_value

# Merge the number of current scans with the score of the text display
execute on passengers if entity @s[type=text_display] run function expansion:blocks/oxygenator/gui/text_display/merge_scan_score

# Check if all the conditions of a succesful scan still match, fail otherwise
execute if function expansion:blocks/oxygenator/oxygenate/scan/check_fail run function expansion:blocks/oxygenator/oxygenate/scan/fails/main