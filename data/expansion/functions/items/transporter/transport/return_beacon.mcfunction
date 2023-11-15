# merge the players scores with the return armor stand
scoreboard players operation @s exp.dim_test = #temp exp.dim_test
scoreboard players operation @s exp.x = #temp exp.x
scoreboard players operation @s exp.y = #temp exp.y
scoreboard players operation @s exp.z = #temp exp.z

# reset the scores
scoreboard players reset #temp exp.dim_test
scoreboard players reset #temp exp.x
scoreboard players reset #temp exp.y
scoreboard players reset #temp exp.z

# tags
tag @s add exp.return_beacon
data merge entity @s {Silent:1b,Marker:1b,Invisible:1b}