execute if score #earth exp.timer_2 matches 1.. positioned 0 128 0 run function expansion:system_generation/earth_generation/load_earth
execute if score #moon exp.timer_2 matches 1.. positioned -621 128 126 run function expansion:system_generation/moon_generation/load_moon
execute if score #mars exp.timer_2 matches 1.. positioned -1882 128 -1334 run function expansion:system_generation/mars_generation/load_mars
execute if score #venus exp.timer_2 matches 1.. positioned 1358 128 1741 run function expansion:system_generation/venus_generation/load_venus
#execute if score #mercury exp.timer_2 matches 1.. positioned 2448 128 -1605 run function expansion:system_generation/mercury_generation/load_mercury
execute if score #jupiter exp.timer_2 matches 1.. positioned -2873 128 1536 run function expansion:system_generation/jupiter_generation/load_jupiter
execute if score #europa exp.timer_2 matches 1.. positioned -3557 128 1635 run function expansion:system_generation/europa_generation/load_europa

execute if score #earth exp.delay matches 1 run function expansion:system_generation/earth_generation/prepare_earth
execute if score #moon exp.delay matches 1 run function expansion:system_generation/moon_generation/prepare_moon
execute if score #mars exp.delay matches 1 run function expansion:system_generation/mars_generation/prepare_mars
execute if score #venus exp.delay matches 1 run function expansion:system_generation/venus_generation/prepare_venus
#execute if score #mercury exp.delay matches 1 run function expansion:system_generation/mercury_generation/prepare_mercury
execute if score #jupiter exp.delay matches 1 run function expansion:system_generation/jupiter_generation/prepare_jupiter
execute if score #europa exp.delay matches 1 run function expansion:system_generation/europa_generation/prepare_europa

execute if score #finish_generation exp.delay matches 1 run function expansion:system_generation/finish_generation

execute if score #earth exp.delay matches 1.. run scoreboard players remove #earth exp.delay 1
execute if score #moon exp.delay matches 1.. run scoreboard players remove #moon exp.delay 1
execute if score #mars exp.delay matches 1.. run scoreboard players remove #mars exp.delay 1
execute if score #venus exp.delay matches 1.. run scoreboard players remove #venus exp.delay 1
#execute if score #mercury exp.delay matches 1.. run scoreboard players remove #mercury exp.delay 1
execute if score #jupiter exp.delay matches 1.. run scoreboard players remove #jupiter exp.delay 1
execute if score #europa exp.delay matches 1.. run scoreboard players remove #europa exp.delay 1

execute if score #finish_generation exp.delay matches 1.. run scoreboard players remove #finish_generation exp.delay 1

execute unless score #earth exp.delay matches 1.. run function expansion:utilities/error_messages/generating_space