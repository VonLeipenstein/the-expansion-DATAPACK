# adjust the speed depending on the selected itemslot and change the dashboard accordingly
execute if entity @s[scores={exp.fuel_percentage=50..100}] run title @p actionbar ["",{"translate":"exp_screentxt_position_actionbar"},{"text":"\u25c0"},{"score":{"name":"@p","objective":"exp.x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.z"}},{"text":"\u25b6     "},{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"score":{"name":"@s","objective":"exp.hold_value_alt"}},{"text":"%\u25b6     "},{"translate":"exp_screentxt_fuel_actionbar"},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"exp.fuel_percentage"},"color":"green"},{"text":"%\u25b6","color":"green"},{"text":" "}]
execute if entity @s[scores={exp.fuel_percentage=10..50}] run title @p actionbar ["",{"translate":"exp_screentxt_position_actionbar"},{"text":"\u25c0"},{"score":{"name":"@p","objective":"exp.x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.z"}},{"text":"\u25b6     "},{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"score":{"name":"@s","objective":"exp.hold_value_alt"}},{"text":"%\u25b6     "},{"translate":"exp_screentxt_fuel_actionbar"},{"text":"\u25c0","color":"gold"},{"score":{"name":"@s","objective":"exp.fuel_percentage"},"color":"gold"},{"text":"%\u25b6","color":"gold"},{"text":" "}]
execute if entity @s[scores={exp.fuel_percentage=0..10}] run title @p actionbar ["",{"translate":"exp_screentxt_position_actionbar"},{"text":"\u25c0"},{"score":{"name":"@p","objective":"exp.x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.z"}},{"text":"\u25b6     "},{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"score":{"name":"@s","objective":"exp.hold_value_alt"}},{"text":"%\u25b6     "},{"translate":"exp_screentxt_fuel_actionbar"},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@s","objective":"exp.fuel_percentage"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"},{"text":" "}]

# regulates the propulsion
execute if score @s exp.fuel_level matches 1.. run function expansion:vehicles/spaceship/propulsion/propulsion

# make the spaceship float in space when speed is 0 (or when fuel runs out)
data merge entity @s[predicate=expansion:dimension/zero_gravity,scores={exp.speed=..10}] {Motion:[0.0,0.0,0.0]}

# antidupe for the blaster item
execute on passengers on passengers unless predicate expansion:nbt_checks/selected_item/items/blasters run function expansion:vehicles/spaceship/antidupe

# spaceship blasters
execute unless score @s exp.counter_2 matches 1.. if score @s exp.speed matches 11.. on passengers on passengers if score @s exp.rightclick matches 1.. if predicate expansion:nbt_checks/selected_item/items/blasters unless predicate expansion:nbt_checks/selected_item/blocks/planetarium unless predicate expansion:nbt_checks/selected_item/items/fleet_finder on vehicle on vehicle run function expansion:vehicles/spaceship/blasters/determine_blaster
scoreboard players remove @s[scores={exp.counter_2=1..}] exp.counter_2 1

# fuel functions, exp.value decides the interval at which fuel is removed. this can be changed by a fuel upgrade
scoreboard players add @s[scores={exp.fuel_level=1..,exp.speed=11..}] exp.timer_1 1
execute if score @s exp.timer_1 >= @s exp.value run function expansion:vehicles/spaceship/fuel/use_fuel

# make the correct particles run depending on the skin
execute on passengers if predicate expansion:nbt_checks/armor/spaceship on vehicle at @s anchored eyes run function expansion:vehicles/spaceship/engine_particles/spaceship
execute on passengers if predicate expansion:nbt_checks/armor/zwaluw on vehicle at @s anchored eyes run function expansion:vehicles/spaceship/engine_particles/zwaluw

# marker functions
execute if entity @p[predicate=expansion:dimension/space,tag=exp.markertag1] as @e[type=minecraft:armor_stand,tag=exp.planet_marker,distance=..20,limit=7,sort=nearest] run function expansion:vehicles/spaceship/markers/markers