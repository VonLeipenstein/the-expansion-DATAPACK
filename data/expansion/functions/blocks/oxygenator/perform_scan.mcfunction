execute if entity @s[tag=exp.initiate] run function expansion:blocks/oxygenator/initiate_scan

# expand the 
execute unless score @s exp.counter_1 > @s exp.hold_value run function expansion:blocks/oxygenator/fill_space/expand_cube/expand_cube

execute unless score @s exp.timer_1 matches 1.. run function expansion:blocks/oxygenator/leaves/leaves_check

# conditions that decide if a scan is succesful or not
execute unless entity @s[tag=exp.scanning] run function expansion:blocks/oxygenator/success
execute if score @s exp.counter_1 > @s exp.hold_value run function expansion:blocks/oxygenator/fail
execute if entity @e[type=marker,tag=exp.oxygen_marker,distance=19..20,limit=1,sort=furthest] run function expansion:blocks/oxygenator/fail

scoreboard players remove @s exp.timer_1 1

# particles
execute at @s run function expansion:blocks/oxygenator/particles

