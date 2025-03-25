execute store result score #temp exp.yaw on vehicle run data get entity @s Rotation[0]
execute store result score @s exp.yaw run data get entity @s Rotation[0]

# highlight markers in the view
scoreboard players operation #temp exp.yaw -= @s exp.yaw
execute if score #temp exp.yaw matches -40..40 unless entity @s[tag=exp.highlighted_marker] run function expansion:vehicles/spaceship/markers/show_marker
execute unless score #temp exp.yaw matches -40..40 if entity @s[tag=exp.highlighted_marker] run function expansion:vehicles/spaceship/markers/hide_marker

# rotate the markers towards the planet
execute if entity @s[tag=exp.earth_marker] facing 0 128 0 run rotate @s ~ ~
execute if entity @s[tag=exp.moon_marker] facing -608 128 112 run rotate @s ~ ~
execute if entity @s[tag=exp.mars_marker] facing -1872 128 -1328 run rotate @s ~ ~
execute if entity @s[tag=exp.venus_marker] facing 1344 128 1728 run rotate @s ~ ~
execute if entity @s[tag=exp.jupiter_marker] facing -2864 128 1536 run rotate @s ~ ~
execute if entity @s[tag=exp.europa_marker] facing -3552 128 1632 run rotate @s ~ ~
execute if entity @s[tag=exp.asteroids_marker] facing -10000 128 ~ run rotate @s ~ ~

execute at @s on passengers run rotate @s ~ ~

# calculate distances for highlighted markers
execute if predicate expansion:periodic/10 if entity @s[tag=exp.highlighted_marker] run function expansion:vehicles/spaceship/markers/distance_to_planet