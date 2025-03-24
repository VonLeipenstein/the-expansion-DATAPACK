# prepare the ID score
scoreboard players operation #search exp.unique_id = @s exp.unique_id

# initiate the scan
execute if score @s exp.timer_1 matches 1 run function expansion:blocks/oxygenator/oxygenate/scan/init
scoreboard players add @s exp.timer_1 1

# visualize airflow
execute at @e[type=marker,tag=exp.oxygen_marker,distance=..100] run particle flame ~ ~.5 ~

# signal to all the oxygen markers whether or not the base is already pressurized
# used to give players entering a pressurized base instant access to oxygen instead of having to wait until the end of the current scan
execute store success score #temp exp.oxygen_max if entity @s[tag=exp.pressurized]

# fill the base with oxygen markers
execute at @s if predicate expansion:periodic/2 run function expansion:blocks/oxygenator/oxygenate/scan/perform

# remove leaves from the block
execute if predicate expansion:periodic/500 run item modify block ~ ~ ~ container.6 expansion:utility/reduce_count

# in and outtake particles
function expansion:blocks/oxygenator/particles

# reset the ID score
scoreboard players reset #search exp.unique_id