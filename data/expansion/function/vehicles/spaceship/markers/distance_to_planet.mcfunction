## DISTANCE TEST
execute store result score #x2 exp.math run data get entity @s Pos[0]
execute store result score #y2 exp.math run data get entity @s Pos[1]
execute store result score #z2 exp.math run data get entity @s Pos[2]

# rotate the markers towards the planet
execute if entity @s[tag=exp.earth_marker] run function expansion:vehicles/spaceship/markers/position/earth
execute if entity @s[tag=exp.moon_marker] run function expansion:vehicles/spaceship/markers/position/moon
execute if entity @s[tag=exp.mars_marker] run function expansion:vehicles/spaceship/markers/position/mars
execute if entity @s[tag=exp.venus_marker] run function expansion:vehicles/spaceship/markers/position/venus
execute if entity @s[tag=exp.jupiter_marker] run function expansion:vehicles/spaceship/markers/position/jupiter
execute if entity @s[tag=exp.europa_marker] run function expansion:vehicles/spaceship/markers/position/europa

execute store result score #temp2 exp.distance run function expansion:utilities/math/distance/calculate

execute on passengers run data merge entity @s {text:[{text:"Distance:\n",color: "green"},{score:{name:"#temp2",objective:"exp.distance"}}]}

scoreboard players reset #temp2 exp.distance