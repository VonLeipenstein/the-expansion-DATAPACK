# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/scan/quick/hit
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/scan/quick/loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# If the max amount of bounces is reached, summon a marker here
scoreboard players remove #temp exp.hold_count 1
execute unless score #temp exp.hold_count matches 1.. run return run function expansion:blocks/oxygenator/oxygenate/scan/quick/add_first_marker

# cast new rays in a random direction perpendicular to the wall
execute store result score #random exp.math run random value 0..3
execute if score #random exp.math matches 0 facing ^1 ^ ^ run function expansion:blocks/oxygenator/oxygenate/scan/quick/cast
execute if score #random exp.math matches 1 facing ^-1 ^ ^ run function expansion:blocks/oxygenator/oxygenate/scan/quick/cast
execute if score #random exp.math matches 2 facing ^ ^1 ^ run function expansion:blocks/oxygenator/oxygenate/scan/quick/cast
execute if score #random exp.math matches 3 facing ^ ^-1 ^ run function expansion:blocks/oxygenator/oxygenate/scan/quick/cast
scoreboard players reset #random exp.math