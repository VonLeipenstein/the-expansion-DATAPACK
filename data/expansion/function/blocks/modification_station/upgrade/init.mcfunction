execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run tag @s add exp.being_modified

scoreboard players reset @s exp.bool
execute if function expansion:blocks/modification_station/upgrade/spaceship/selected run function expansion:blocks/modification_station/upgrade/spaceship/apply_mods/initiate
execute if function expansion:blocks/modification_station/upgrade/mech/selected run function expansion:blocks/modification_station/upgrade/mech/apply_mods/initiate
execute if function expansion:blocks/modification_station/upgrade/buggy/selected run function expansion:blocks/modification_station/upgrade/buggy/apply_mods/initiate

# start the upgrade if at least one of the transfers succeeded
execute if score #temp exp.bool matches 1 run scoreboard players set @s exp.timer_1 200
scoreboard players reset @s exp.bool