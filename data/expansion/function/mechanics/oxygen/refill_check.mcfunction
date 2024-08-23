# check tank
execute store result score #source exp.oxygen_lvl run data get entity @p SelectedItem.components.minecraft:custom_data.oxygen_lvl

# fill the equipments oxygen supply if the tank has oxygen and if the equipment needs oxygen/unless it doesnt have a tank, in which case the oxygen_max is 0
execute if score #source exp.oxygen_lvl matches 1.. if score @s exp.oxygen_lvl < @s exp.oxygen_max unless score @s exp.oxygen_max matches ..0 run function expansion:mechanics/oxygen/fill_equipment_from_tank
