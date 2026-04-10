# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/markers/distance_to_planet
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/markers/markers (1 caller) [OK same-folder]
# <<< generated function callers <<<

## DISTANCE TEST
function expansion:utilities/store_pos_in_score
scoreboard players operation #x2 exp.math = @s exp.x
scoreboard players operation #y2 exp.math = @s exp.y
scoreboard players operation #z2 exp.math = @s exp.z

# Get the coordinates of every planet
execute if entity @s[tag=exp.earth_marker] run function expansion:vehicles/spaceship/markers/position/earth
execute if entity @s[tag=exp.moon_marker] run function expansion:vehicles/spaceship/markers/position/moon
execute if entity @s[tag=exp.mars_marker] run function expansion:vehicles/spaceship/markers/position/mars
execute if entity @s[tag=exp.venus_marker] run function expansion:vehicles/spaceship/markers/position/venus
execute if entity @s[tag=exp.jupiter_marker] run function expansion:vehicles/spaceship/markers/position/jupiter
execute if entity @s[tag=exp.europa_marker] run function expansion:vehicles/spaceship/markers/position/europa

# merge the calculated distance with the text display
execute on passengers store result score @s exp.distance run function expansion:utilities/math/distance/calculate
execute on passengers run data modify entity @s text.extra set value [{score:{name:"@s",objective:"exp.distance"}}]