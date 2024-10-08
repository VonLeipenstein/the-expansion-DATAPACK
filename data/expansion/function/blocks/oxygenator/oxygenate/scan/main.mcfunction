execute if entity @s[tag=exp.initiate] run function expansion:blocks/oxygenator/oxygenate/scan/init

execute unless score @s exp.counter_1 > @s exp.hold_value run function expansion:blocks/oxygenator/oxygenate/fill_space/main

execute unless score @s exp.timer_1 matches 1.. run function expansion:blocks/oxygenator/leaves/leaves_check

# conditions that decide if a scan is succesful or not
execute unless entity @s[tag=exp.scanning] run function expansion:blocks/oxygenator/oxygenate/success
execute if score @s exp.counter_1 > @s exp.hold_value run function expansion:blocks/oxygenator/oxygenate/fail
execute if entity @e[type=minecraft:marker,tag=exp.oxygen_marker,distance=19..20,limit=1,sort=furthest] run function expansion:blocks/oxygenator/oxygenate/fail

scoreboard players remove @s exp.timer_1 1

# give players who have been hit by the wave oxygen
execute at @a[distance=..20,tag=!exp.inside_check] positioned ~ ~1 ~ if entity @e[type=minecraft:marker,tag=exp.oxygen_marker,distance=..1.4,limit=1,sort=arbitrary] run function expansion:blocks/oxygenator/oxygenate/give_oxygen

# particles
function expansion:blocks/oxygenator/particles

