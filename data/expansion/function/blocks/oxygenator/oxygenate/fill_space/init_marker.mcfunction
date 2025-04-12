scoreboard players operation @s exp.unique_id = #search exp.unique_id

# render glass cubes if the togle for visible air is set to true
execute if score #temp exp.value matches 1 run item replace entity @s contents with light_blue_stained_glass

data merge entity @s {transformation:{translation:[0.5,0.2,-0.5],scale:[0.5,0.5,0.5]}}

tag @s add exp.oxygen_marker

# set the markers lifetime in ticks
scoreboard players set @s exp.delay 2

# determined maximum amount of blocks the marker can scan during its lifetime
scoreboard players set @s exp.counter_1 4
execute if score #temp exp.bool matches 1 run scoreboard players set @s exp.counter_1 6