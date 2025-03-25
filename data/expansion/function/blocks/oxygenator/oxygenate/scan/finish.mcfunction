# successful scan
execute if score @s exp.bool matches 1 run function expansion:blocks/oxygenator/oxygenate/success

# failed scan
execute if score @s exp.bool matches 2.. run function expansion:blocks/oxygenator/oxygenate/fail

# merge the number of blocks with the score of the text display
execute on passengers if entity @s[type=text_display] run function expansion:blocks/oxygenator/gui/text_display/merge_scan_score

scoreboard players reset @s exp.bool