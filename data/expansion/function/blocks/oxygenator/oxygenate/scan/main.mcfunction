# initiate the scan
execute if score @s exp.timer_1 matches 1 run function expansion:blocks/oxygenator/oxygenate/scan/init
scoreboard players add @s exp.timer_1 1

# visualize airflow
#execute if entity @s[tag=exp.displaying_air] on passengers if entity @s[tag=exp.scanner_link] on origin at @s run particle soul_fire_flame ^ ^.5 ^-0.4
#execute if entity @s[tag=exp.displaying_air] on passengers if entity @s[tag=exp.scanner_link] on origin at @s run particle end_rod ^ ^.5 ^-0.2
execute if entity @s[tag=exp.displaying_air] on passengers if entity @s[tag=exp.scanner_link] on origin at @s run particle flame ~ ~.5 ~
#execute if entity @s[tag=exp.displaying_air] on passengers if entity @s[tag=exp.scanner_link] on origin at @s run particle end_rod ^ ^.5 ^0.2
#execute if entity @s[tag=exp.displaying_air] on passengers if entity @s[tag=exp.scanner_link] on origin at @s run particle flame ^ ^.5 ^0.4

# reset the score that keeps track of the amount of currently present scanners
scoreboard players reset @s exp.hold_value

# reset flow control counters, these limit the amount of snowballs that scan every tick
scoreboard players reset #temp exp.counter_1
scoreboard players reset #temp exp.counter_2

# signal to all the oxygen markers whether or not the base is already pressurized
# used to give players entering a pressurized base instant access to oxygen instead of having to wait until the end of the current scan
execute store success score #temp exp.oxygen_max if entity @s[tag=exp.pressurized]

# fill the base with oxygen markers
execute at @s on passengers if entity @s[tag=exp.scanner_link] run function expansion:blocks/oxygenator/oxygenate/fill_space/main

# remove leaves from the block
execute if predicate expansion:periodic/500 run item modify block ~ ~ ~ container.6 expansion:utility/reduce_count

# in and outtake particles
function expansion:blocks/oxygenator/particles

# merge the number of current scans with the score of the text display
execute if predicate expansion:periodic/2 on passengers if entity @s[type=text_display] run function expansion:blocks/oxygenator/gui/text_display/merge_scan_score

# run when a scan finishes for whatever reason
execute store result score @s exp.bool run function expansion:blocks/oxygenator/oxygenate/scan/check_valid
execute if score @s exp.bool matches 1.. run function expansion:blocks/oxygenator/oxygenate/scan/finish