# Prepare the ID score and reset scores
scoreboard players operation #search exp.unique_id = @s exp.unique_id
scoreboard players reset #temp exp.hold_value
scoreboard players reset #temp exp.oxygen_lvl

# Signal to all the oxygen markers whether or not the base is already pressurized
# Used to give players entering a pressurized base instant access to oxygen instead of having to wait until the end of the current scan
# Add the info on whether the air should be visible (used in fill_space/init_marker)
execute store success score #temp exp.oxygen_max if entity @s[tag=exp.pressurized]
execute store success score #temp exp.value if entity @s[tag=exp.displaying_air]

# Fill the base with oxygen markers
scoreboard players add @s exp.timer_2 1
execute at @s if score @s exp.timer_2 matches 1 run function expansion:blocks/oxygenator/oxygenate/scan/perform
scoreboard players set @s[scores={exp.timer_2=1}] exp.timer_2 0

# Remove leaves from the block
execute if predicate expansion:periodic/500 if items block ~ ~ ~ container.6 #expansion:leaves run item modify block ~ ~ ~ container.6 expansion:utility/reduce_count

# Remove timer and reset the ID score
scoreboard players remove @s exp.timer_1 1
scoreboard players reset #search exp.unique_id