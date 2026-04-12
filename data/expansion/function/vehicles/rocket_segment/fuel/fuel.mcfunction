# update the roots fuel level
scoreboard players set #subtract exp.bool 1
function expansion:vehicles/rocket_segment/merge_stats_with_root

# get fuel count from players hand
execute store result score #temp exp.fuel_level as @p[tag=exp.clicking_player] run data get entity @s SelectedItem.count

# calculate missing fuel count
scoreboard players operation #missing exp.fuel_level = @s exp.fuel_max
scoreboard players operation #missing exp.fuel_level -= @s exp.fuel_level

# if fuel count is greater than missing fuel count, set fuel count to missing fuel count
execute if score #temp exp.fuel_level > #missing exp.fuel_level run scoreboard players operation #temp exp.fuel_level = #missing exp.fuel_level

# add fuel count to fuel segment's fuel count
scoreboard players operation @s exp.fuel_level += #temp exp.fuel_level

# update the segments fuel storage
scoreboard players operation #temp exp.hold_count = #temp exp.fuel_level
execute on passengers if entity @s[tag=exp.fuel_storage] if items entity @s contents * run item modify entity @s contents expansion:utility/add_count_from_temp_score
execute on passengers if entity @s[tag=exp.fuel_storage] unless items entity @s contents * run item replace entity @s contents from entity @p[tag=exp.clicking_player] weapon.mainhand expansion:utility/set_count_from_temp_score

# remove fuel count from player's hand
scoreboard players operation #temp exp.hold_count *= #-1 exp.const
execute as @p[tag=exp.clicking_player] run item modify entity @s[gamemode=!creative] weapon.mainhand expansion:utility/add_count_from_temp_score

# reset used scores
scoreboard players reset #temp exp.fuel_level
scoreboard players reset #missing exp.fuel_level
scoreboard players reset #temp exp.hold_count

# update the roots fuel level
function expansion:vehicles/rocket_segment/merge_stats_with_root