# Cast a ray which bounces around 10 times, probably finding the corcer of the room
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

# Tag all the entities which are currently connected
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run tag @s add exp.getting_oxygen

# start the animated block texture
execute if entity @s[tag=!exp.pressurized] run function expansion:blocks/oxygenator/gui/animated_texture/start
