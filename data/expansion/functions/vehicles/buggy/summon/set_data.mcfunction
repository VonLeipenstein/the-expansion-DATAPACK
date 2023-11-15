# set the model from the players hand item
execute on passengers if entity @s[type=minecraft:item_display,tag=exp.buggy_display] run item replace entity @s container.0 from entity @p[tag=exp.tick_player] weapon.mainhand

# set the display rotation to the base entity rotation
execute on passengers if entity @s[type=minecraft:item_display,tag=exp.buggy_display] store result entity @s Rotation[0] float 1 on vehicle run data get entity @s Rotation[0]

# set the transformations for the display
execute on passengers if entity @s[type=minecraft:item_display,tag=exp.buggy_display] run data merge entity @s {transformation:{translation:[0.0f,-0.1f,0.0f],scale:[0.43f,0.43f,0.43f]}}

# copy the fuel level from the players item
execute store result score @s exp.fuel_level run data get entity @p[tag=exp.tick_player] SelectedItem.tag.fuel_lvl

# make the buggy weightless if it is in a zero gravity environment
data merge entity @s[predicate=expansion:dimension/zero_gravity] {NoGravity:1b}

# set max fuel
scoreboard players set @s exp.fuel_max 129

# set animation frame for the wheels animation
scoreboard players set @s exp.timer_1 1012007