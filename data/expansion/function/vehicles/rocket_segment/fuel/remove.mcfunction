
execute on passengers if entity @s[tag=exp.fuel_storage] store result score #temp exp.hold_count run data get entity @s item.count 1

execute if score #temp exp.hold_count matches 1.. run item modify entity @s contents expansion:utility/add_count_from_temp_score