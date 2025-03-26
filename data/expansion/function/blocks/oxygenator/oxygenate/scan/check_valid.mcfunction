## stop the scanning if:

# the scan was successful and there are no scanners left
execute unless score @s exp.hold_value matches 1.. run return 1

# the maximum scanning capacity was exceeded
execute if score @s exp.hold_value matches 1000.. run return 2

# the maximum scanning capacity was exceeded
execute if score @s exp.hold_value matches 100.. run return 3

# leaves are depleted
execute unless items block ~ ~-1 ~ container.6 #expansion:leaves run return 4

# player pushed the depressurize button
execute if entity @s[tag=exp.depressurize] run return 5

# if the pressurization took too long
execute if score @s exp.timer_1 matches 400.. run return 6

## else
return 0