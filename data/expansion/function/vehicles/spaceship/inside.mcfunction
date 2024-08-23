# regulates the propulsion
execute if score @s exp.fuel_level matches 1.. run function expansion:vehicles/spaceship/propulsion/propulsion

# actionbar
execute if entity @s[scores={exp.fuel_percentage=51..100}] run title @p[tag=exp.spaceship_pilot] actionbar ["",{"translate":"exp_screentxt_position_actionbar"},{"text":"\u25c0"},{"score":{"name":"@p[tag=exp.spaceship_pilot]","objective":"exp.x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p[tag=exp.spaceship_pilot]","objective":"exp.y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p[tag=exp.spaceship_pilot]","objective":"exp.z"}},{"text":"\u25b6     "},{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"score":{"name":"#temp","objective":"exp.speed"}},{"text":"%\u25b6     "},{"translate":"exp_screentxt_fuel_actionbar"},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"exp.fuel_percentage"},"color":"green"},{"text":"%\u25b6","color":"green"},{"text":" "}]
execute if entity @s[scores={exp.fuel_percentage=11..50}] run title @p[tag=exp.spaceship_pilot] actionbar ["",{"translate":"exp_screentxt_position_actionbar"},{"text":"\u25c0"},{"score":{"name":"@p[tag=exp.spaceship_pilot]","objective":"exp.x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p[tag=exp.spaceship_pilot]","objective":"exp.y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p[tag=exp.spaceship_pilot]","objective":"exp.z"}},{"text":"\u25b6     "},{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"score":{"name":"temp","objective":"exp.speed"}},{"text":"%\u25b6     "},{"translate":"exp_screentxt_fuel_actionbar"},{"text":"\u25c0","color":"gold"},{"score":{"name":"@s","objective":"exp.fuel_percentage"},"color":"gold"},{"text":"%\u25b6","color":"gold"},{"text":" "}]
execute if entity @s[scores={exp.fuel_percentage=0..10}] run title @p[tag=exp.spaceship_pilot] actionbar ["",{"translate":"exp_screentxt_position_actionbar"},{"text":"\u25c0"},{"score":{"name":"@p[tag=exp.spaceship_pilot]","objective":"exp.x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p[tag=exp.spaceship_pilot]","objective":"exp.y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p[tag=exp.spaceship_pilot]","objective":"exp.z"}},{"text":"\u25b6     "},{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"score":{"name":"temp","objective":"exp.speed"}},{"text":"%\u25b6     "},{"translate":"exp_screentxt_fuel_actionbar"},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@s","objective":"exp.fuel_percentage"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"},{"text":" "}]

# make the spaceship float in space when speed is 0 (or when fuel runs out)
execute if score @s exp.speed matches ..10 run function expansion:vehicles/spaceship/propulsion/no_speed

# remove blaster cooldown
scoreboard players remove @s[scores={exp.counter_2=1..}] exp.counter_2 1

# speed for bigger FOV
effect give @p[tag=exp.spaceship_pilot] speed 1 4 true

# marker functions
execute unless entity @s[tag=exp.spaceship_has_markers] on passengers on passengers if entity @s[predicate=expansion:dimension/space,tag=exp.markertag1] as @e[type=minecraft:item_display,tag=exp.planet_marker,distance=..20,limit=7,sort=nearest] run function expansion:vehicles/spaceship/markers/markers