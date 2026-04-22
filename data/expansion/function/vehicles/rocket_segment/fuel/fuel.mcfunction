# get fuel count from players hand
execute store result score #held exp.fuel_level as @p[tag=exp.clicking_player] run data get entity @s SelectedItem.count

# calculate missing fuel count for this segment
execute store result score #missing exp.fuel_level run function expansion:vehicles/rocket_segment/get_stat/capacity/segment
execute store result score #temp exp.fuel_level run function expansion:vehicles/rocket_segment/get_stat/fuel/segment
scoreboard players operation #missing exp.fuel_level -= #temp exp.fuel_level

# if held fuel count is greater than missing fuel count, set fuel count to missing fuel count
execute if score #held exp.fuel_level > #missing exp.fuel_level run scoreboard players operation #held exp.fuel_level = #missing exp.fuel_level

# update the segments fuel storage
scoreboard players operation #temp exp.hold_count = #held exp.fuel_level
execute on passengers if entity @s[tag=exp.segment_display] store result entity @s item.components."minecraft:custom_data".stats.fuel.level


# remove fuel count from player's hand
scoreboard players operation #temp exp.hold_count *= #-1 exp.const
execute as @p[tag=exp.clicking_player] run item modify entity @s[gamemode=!creative] weapon.mainhand expansion:utility/add_count_from_temp_score

# reset used scores
scoreboard players reset #temp exp.fuel_level
scoreboard players reset #held exp.fuel_level
scoreboard players reset #missing exp.fuel_level
scoreboard players reset #temp exp.hold_count