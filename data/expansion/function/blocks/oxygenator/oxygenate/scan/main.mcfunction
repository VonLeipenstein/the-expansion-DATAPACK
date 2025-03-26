# prepare the ID score
scoreboard players operation #search exp.unique_id = @s exp.unique_id

# signal to all the oxygen markers whether or not the base is already pressurized
# used to give players entering a pressurized base instant access to oxygen instead of having to wait until the end of the current scan
execute store success score #temp exp.oxygen_max if entity @s[tag=exp.pressurized]

# add the info on whether the air should be visible (used in fill_space/init_marker)
execute store success score #temp exp.value if entity @s[tag=exp.displaying_air]

# initiate the scan
execute if score @s exp.timer_1 matches 1 unless score @s exp.cooldown matches 1.. run function expansion:blocks/oxygenator/oxygenate/scan/init
# keep track of the duration of the scan
scoreboard players add @s exp.timer_1 1

# fill the base with oxygen markers
scoreboard players add @s exp.timer_2 1
execute at @s if score @s exp.timer_2 matches 1 run function expansion:blocks/oxygenator/oxygenate/scan/perform
scoreboard players set @s[scores={exp.timer_2=3}] exp.timer_2 0

# remove leaves from the block
execute if predicate expansion:periodic/500 run item modify block ~ ~ ~ container.6 expansion:utility/reduce_count

# reset the ID score
scoreboard players reset #search exp.unique_id