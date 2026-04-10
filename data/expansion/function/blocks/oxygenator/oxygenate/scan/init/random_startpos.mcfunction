# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/scan/init/random_startpos
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/scan/init/best_startpos (1 caller) [OK same-folder]
# - function expansion:blocks/oxygenator/oxygenate/scan/init/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Cast a ray which bounces around 20 times, probably finding the corcer of the room
# this was added because a floating oxygenator would oxygenate nearby players without checking the room
# to make it harder to dick around with this by randomising the direction
execute store result score #random exp.math run random value 0..5
scoreboard players set #temp exp.hold_count 20
execute if score #random exp.math matches 0 at @s positioned ~ ~-0.5 ~ align xyz positioned ~.5 ~.5 ~.5 facing ~ ~1 ~ run function expansion:blocks/oxygenator/oxygenate/scan/quick/cast
execute if score #random exp.math matches 1 at @s positioned ~ ~-0.5 ~ align xyz positioned ~.5 ~.5 ~.5 facing ~ ~-1 ~ run function expansion:blocks/oxygenator/oxygenate/scan/quick/cast
execute if score #random exp.math matches 2 at @s positioned ~ ~-0.5 ~ align xyz positioned ~.5 ~.5 ~.5 facing ~1 ~ ~ run function expansion:blocks/oxygenator/oxygenate/scan/quick/cast
execute if score #random exp.math matches 3 at @s positioned ~ ~-0.5 ~ align xyz positioned ~.5 ~.5 ~.5 facing ~-1 ~ ~ run function expansion:blocks/oxygenator/oxygenate/scan/quick/cast
execute if score #random exp.math matches 4 at @s positioned ~ ~-0.5 ~ align xyz positioned ~.5 ~.5 ~.5 facing ~ ~ ~1 run function expansion:blocks/oxygenator/oxygenate/scan/quick/cast
execute if score #random exp.math matches 5 at @s positioned ~ ~-0.5 ~ align xyz positioned ~.5 ~.5 ~.5 facing ~ ~ ~-1 run function expansion:blocks/oxygenator/oxygenate/scan/quick/cast
