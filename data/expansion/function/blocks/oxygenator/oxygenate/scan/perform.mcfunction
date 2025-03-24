# reset score
scoreboard players reset #temp exp.hold_value
scoreboard players reset #temp exp.hold_count

# expand scan
execute as @e[type=marker,tag=exp.oxygen_marker,predicate=expansion:compare_score/unique_id,distance=..100] run function expansion:blocks/oxygenator/oxygenate/fill_space/main

# reset the score that keeps track of the amount of currently present scanners
scoreboard players operation @s exp.hold_value = #temp exp.hold_value
scoreboard players operation @s exp.hold_count = #temp exp.hold_count

# merge the number of current scans with the score of the text display
execute on passengers if entity @s[type=text_display] run function expansion:blocks/oxygenator/gui/text_display/merge_scan_score

# run when a scan finishes for whatever reason
execute store result score @s exp.bool run function expansion:blocks/oxygenator/oxygenate/scan/check_valid
execute if score @s exp.bool matches 1.. run function expansion:blocks/oxygenator/oxygenate/scan/finish
