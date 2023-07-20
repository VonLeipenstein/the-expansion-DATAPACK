execute store result score @s exp.hold_value_alt run data get entity @s SelectedItem.tag.mode
scoreboard players add @s exp.hold_value_alt 1
execute if score @s exp.hold_value_alt matches 3 run scoreboard players set @s exp.hold_value_alt 0

execute store result storage expansion:mode data.mode byte 1 run scoreboard players get @s exp.hold_value_alt

execute if score @s exp.hold_value_alt matches 0 run item modify entity @s weapon.mainhand expansion:cryoblaster/mode1
execute if score @s exp.hold_value_alt matches 1 run item modify entity @s weapon.mainhand expansion:cryoblaster/mode2
execute if score @s exp.hold_value_alt matches 2 run item modify entity @s weapon.mainhand expansion:cryoblaster/mode3