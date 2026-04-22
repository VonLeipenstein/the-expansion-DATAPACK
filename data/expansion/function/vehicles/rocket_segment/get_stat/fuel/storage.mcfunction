execute store result score #acc exp.value run data get entity @s item.count
scoreboard players operation #temp exp.hold_value += #acc exp.value
scoreboard players reset #acc exp.value
