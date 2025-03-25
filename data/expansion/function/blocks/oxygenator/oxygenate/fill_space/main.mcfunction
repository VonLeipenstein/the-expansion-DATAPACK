scoreboard players remove @s exp.delay 1

# expand new markers if the score is more than 1
execute if score @s exp.counter_1 matches 1.. run function expansion:blocks/oxygenator/oxygenate/fill_space/scan_nearby_blocks