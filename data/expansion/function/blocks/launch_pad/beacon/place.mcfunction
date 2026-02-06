# signal the assigned launch pad
execute store result score #search exp.pad_id run data get entity @s SelectedItem.components."minecraft:custom_data".pad_id

# check if the corresponding pad exists
execute unless entity @e[type=minecraft:item_display,tag=exp.launch_pad,predicate=expansion:compare_score/pad_id,limit=1] run return run say pad unavailable

# check if the corresponding pad has an available rocket
execute as @e[type=minecraft:item_display,tag=exp.launch_pad,predicate=expansion:compare_score/pad_id,limit=1] unless function expansion:blocks/launch_pad/has_rocket_ready run return run say rocket not available

# sky access of launchpad
execute as @e[type=minecraft:item_display,tag=exp.launch_pad,predicate=expansion:compare_score/pad_id,limit=1] at @s unless predicate expansion:location/sky_access run return run say launchpad requires sky access

# forceload the rocket chunk
forceload add ~ ~

# summon the beacon
summon minecraft:item_display ~ ~ ~ {Tags:["exp.cargo_beacon"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0.0,0.62,0.0],scale:[1.2,1.2,1.2]}}
item replace entity @e[type=minecraft:item_display,tag=exp.cargo_beacon,distance=..0.01,limit=1] contents from entity @p[tag=exp.tick_player] weapon.mainhand

scoreboard players operation @e[type=minecraft:item_display,tag=exp.cargo_beacon,distance=..0.01,limit=1] exp.pad_id = #search exp.pad_id
execute as @e[type=minecraft:item_display,tag=exp.launch_pad,predicate=expansion:compare_score/pad_id,limit=1] on passengers if entity @s[tag=exp.cargo_rocket] run function expansion:blocks/launch_pad/beacon/signal_rocket

# remove the players beacon
item replace entity @s weapon.mainhand with air
