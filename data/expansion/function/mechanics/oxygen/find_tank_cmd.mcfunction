execute if score #temp exp.math matches 0..14 run scoreboard players set #temp exp.hold_value 1012250
execute if score #temp exp.math matches 15..24 run scoreboard players set #temp exp.hold_value 1012251
execute if score #temp exp.math matches 25..34 run scoreboard players set #temp exp.hold_value 1012252
execute if score #temp exp.math matches 35..49 run scoreboard players set #temp exp.hold_value 1012253
execute if score #temp exp.math matches 50..64 run scoreboard players set #temp exp.hold_value 1012254
execute if score #temp exp.math matches 65..74 run scoreboard players set #temp exp.hold_value 1012255
execute if score #temp exp.math matches 75..84 run scoreboard players set #temp exp.hold_value 1012256
execute if score #temp exp.math matches 85..94 run scoreboard players set #temp exp.hold_value 1012257
execute if score #temp exp.math matches 95..100 run scoreboard players set #temp exp.hold_value 1012258

# change the model based on the oxygen tank tier
scoreboard players operation #tier exp.value -= #1 exp.const
scoreboard players operation #tier exp.value *= #10 exp.const
scoreboard players operation #temp exp.hold_value += #tier exp.value

execute store result storage expansion:oxygen_calc data.tank_cmd int 1 run scoreboard players get #temp exp.hold_value

scoreboard players reset #temp exp.math
scoreboard players reset #temp exp.hold_value
scoreboard players reset #tier exp.value