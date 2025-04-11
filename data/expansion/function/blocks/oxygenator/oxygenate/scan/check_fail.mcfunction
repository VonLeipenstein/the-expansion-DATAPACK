# If the pressurization took too long
execute if score @s exp.timer_1 matches ..10 run return run function expansion:blocks/oxygenator/oxygenate/scan/fails/toolong

# Player pushed the depressurize button
execute if entity @s[tag=exp.depressurize] run return run function expansion:blocks/oxygenator/oxygenate/scan/fails/button

# Leaves are depleted
execute unless items block ~ ~-1 ~ container.6 #expansion:leaves run return run function expansion:blocks/oxygenator/oxygenate/scan/fails/noleaves

# The maximum scanning capacity was exceeded
execute if score @s exp.hold_value matches 200.. run return run function expansion:blocks/oxygenator/oxygenate/scan/fails/scancap

# The maximum scanning capacity was exceeded
execute if score @s exp.hold_value matches 1000.. run return run function expansion:blocks/oxygenator/oxygenate/scan/fails/blockcap

# The scan was successful and there are no scanners left
execute unless score @s exp.hold_value matches 1.. run function expansion:blocks/oxygenator/oxygenate/success
return fail