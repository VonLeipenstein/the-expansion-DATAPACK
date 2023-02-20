execute if score @s exp.timer_2 matches 1..230 if entity @p[predicate=expansion:nbt_checks/armor/space_equipment/equipment] run function expansion:vehicles/lunar_module/countdown

execute if score @s exp.timer_2 matches 0 run function expansion:vehicles/lunar_module/propulsion
