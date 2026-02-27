# copy and remove from player
item replace entity @s container.0 from entity @p weapon.mainhand expansion:utility/count_to_1
item modify entity @p weapon.mainhand expansion:utility/reduce_count

# store core id
scoreboard players operation @s exp.hold_value_alt = #temp exp.counter_1

# exp.hold_value keeps track of core count
execute on vehicle at @s run function expansion:blocks/portal/cores/add_core_count

# vfx
playsound expansion:portal.insert_core block @a[distance=..16] ~ ~2.15 ~ 1 1 0