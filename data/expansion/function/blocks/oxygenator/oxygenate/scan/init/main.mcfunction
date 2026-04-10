# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/scan/init/main
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/oxygenator/gui/buttons/toggle_scan (1 caller) [WARN side/down 5]
# - function expansion:blocks/oxygenator/main (1 caller) [OK above +3]
# <<< generated function callers <<<

scoreboard players operation #search exp.unique_id = @s exp.unique_id
scoreboard players set #temp exp.bool 1

# Either start a scan from a random position (usually corner) in the room or from the currently best documented position
execute store result score #random exp.math run random value 0..100
scoreboard players set #temp exp.math 0
execute if score @s exp.passenger_count matches 10.. run scoreboard players set #temp exp.math 20
execute if score @s exp.passenger_count matches 20.. run scoreboard players set #temp exp.math 50
execute if score @s exp.passenger_count matches 40.. run scoreboard players set #temp exp.math 80
execute if score @s exp.passenger_count matches 80.. run scoreboard players set #temp exp.math 95
execute if score #random exp.math > #temp exp.math run function expansion:blocks/oxygenator/oxygenate/scan/init/random_startpos
execute if score #random exp.math <= #temp exp.math run function expansion:blocks/oxygenator/oxygenate/scan/init/best_startpos

# Start the animated block texture
function expansion:blocks/oxygenator/gui/animated_texture/start

# Start the scan
scoreboard players set @s exp.timer_1 400

# Make sure the perform is synchronized with this
scoreboard players reset @s exp.timer_2
scoreboard players reset #search exp.unique_id
# reset registered max amount of scanners
scoreboard players set @s exp.counter_1 0
scoreboard players reset #temp exp.bool
