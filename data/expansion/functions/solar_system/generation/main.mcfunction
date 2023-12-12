# gradually spawn in the pieces of every planet
execute if score #earth exp.timer_2 matches 1.. positioned 0 128 0 run function expansion:solar_system/generation/earth/load
execute if score #moon exp.timer_2 matches 1.. positioned -621 128 126 run function expansion:solar_system/generation/moon/load
execute if score #mars exp.timer_2 matches 1.. positioned -1882 128 -1334 run function expansion:solar_system/generation/mars/load
execute if score #venus exp.timer_2 matches 1.. positioned 1358 128 1741 run function expansion:solar_system/generation/venus/load
#execute if score #mercury exp.timer_2 matches 1.. positioned 2448 128 -1605 run function expansion:solar_system/generation/mercury/load
execute if score #jupiter exp.timer_2 matches 1.. positioned -2873 128 1536 run function expansion:solar_system/generation/jupiter/load
execute if score #europa exp.timer_2 matches 1.. positioned -3557 128 1635 run function expansion:solar_system/generation/europa/load

# prepare the location of each planet
execute if score #earth exp.delay matches 1 run function expansion:solar_system/generation/earth/prepare
execute if score #moon exp.delay matches 1 run function expansion:solar_system/generation/moon/prepare
execute if score #mars exp.delay matches 1 run function expansion:solar_system/generation/mars/prepare
execute if score #venus exp.delay matches 1 run function expansion:solar_system/generation/venus/prepare
#execute if score #mercury exp.delay matches 1 run function expansion:solar_system/generation/mercury/prepare
execute if score #jupiter exp.delay matches 1 run function expansion:solar_system/generation/jupiter/prepare
execute if score #europa exp.delay matches 1 run function expansion:solar_system/generation/europa/prepare

# finish the system generation
execute if score #finish_generation exp.delay matches 1 run function expansion:solar_system/generation/finish

execute if score #earth exp.delay matches 1.. run scoreboard players remove #earth exp.delay 1
execute if score #moon exp.delay matches 1.. run scoreboard players remove #moon exp.delay 1
execute if score #mars exp.delay matches 1.. run scoreboard players remove #mars exp.delay 1
execute if score #venus exp.delay matches 1.. run scoreboard players remove #venus exp.delay 1
#execute if score #mercury exp.delay matches 1.. run scoreboard players remove #mercury exp.delay 1
execute if score #jupiter exp.delay matches 1.. run scoreboard players remove #jupiter exp.delay 1
execute if score #europa exp.delay matches 1.. run scoreboard players remove #europa exp.delay 1

# remove timer
execute if score #finish_generation exp.delay matches 1.. run scoreboard players remove #finish_generation exp.delay 1

# actionbar message during generation
execute unless score #earth exp.delay matches 1.. run function expansion:utilities/error_messages/generating_space