# >>> generated function callers >>>
# Callers for expansion:blocks/portal/activation/search_match_code
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/portal/prepare_array (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players reset #temp exp.hold_value_alt
execute store result score #temp exp.hold_value_alt on passengers if entity @s[tag=exp.port_1] run scoreboard players get @s exp.hold_value_alt
execute if score #temp exp.hold_value_alt matches 1 run function expansion:blocks/portal/activation/core1/check1
execute if score #temp exp.hold_value_alt matches 2 run function expansion:blocks/portal/activation/core1/check2
execute if score #temp exp.hold_value_alt matches 3 run function expansion:blocks/portal/activation/core1/check3
execute if score #temp exp.hold_value_alt matches 4 run function expansion:blocks/portal/activation/core1/check4
execute if score #temp exp.hold_value_alt matches 5 run function expansion:blocks/portal/activation/core1/check5

execute store result score #temp exp.hold_value_alt on passengers if entity @s[tag=exp.port_2] run scoreboard players get @s exp.hold_value_alt
execute if score #temp exp.hold_value_alt matches 1 run function expansion:blocks/portal/activation/core2/check1
execute if score #temp exp.hold_value_alt matches 2 run function expansion:blocks/portal/activation/core2/check2
execute if score #temp exp.hold_value_alt matches 3 run function expansion:blocks/portal/activation/core2/check3
execute if score #temp exp.hold_value_alt matches 4 run function expansion:blocks/portal/activation/core2/check4
execute if score #temp exp.hold_value_alt matches 5 run function expansion:blocks/portal/activation/core2/check5

execute store result score #temp exp.hold_value_alt on passengers if entity @s[tag=exp.port_3] run scoreboard players get @s exp.hold_value_alt
execute if score #temp exp.hold_value_alt matches 1 run function expansion:blocks/portal/activation/core3/check1
execute if score #temp exp.hold_value_alt matches 2 run function expansion:blocks/portal/activation/core3/check2
execute if score #temp exp.hold_value_alt matches 3 run function expansion:blocks/portal/activation/core3/check3
execute if score #temp exp.hold_value_alt matches 4 run function expansion:blocks/portal/activation/core3/check4
execute if score #temp exp.hold_value_alt matches 5 run function expansion:blocks/portal/activation/core3/check5

execute store result score #temp exp.hold_value_alt on passengers if entity @s[tag=exp.port_4] run scoreboard players get @s exp.hold_value_alt
execute if score #temp exp.hold_value_alt matches 1 run function expansion:blocks/portal/activation/core4/check1
execute if score #temp exp.hold_value_alt matches 2 run function expansion:blocks/portal/activation/core4/check2
execute if score #temp exp.hold_value_alt matches 3 run function expansion:blocks/portal/activation/core4/check3
execute if score #temp exp.hold_value_alt matches 4 run function expansion:blocks/portal/activation/core4/check4
execute if score #temp exp.hold_value_alt matches 5 run function expansion:blocks/portal/activation/core4/check5

execute store result score #temp exp.hold_value_alt on passengers if entity @s[tag=exp.port_5] run scoreboard players get @s exp.hold_value_alt
execute if score #temp exp.hold_value_alt matches 1 run function expansion:blocks/portal/activation/core5/check1
execute if score #temp exp.hold_value_alt matches 2 run function expansion:blocks/portal/activation/core5/check2
execute if score #temp exp.hold_value_alt matches 3 run function expansion:blocks/portal/activation/core5/check3
execute if score #temp exp.hold_value_alt matches 4 run function expansion:blocks/portal/activation/core5/check4
execute if score #temp exp.hold_value_alt matches 5 run function expansion:blocks/portal/activation/core5/check5
scoreboard players reset #temp exp.hold_value_alt