function expansion:utilities/fuel_percentage
execute if score @s exp.fuel_percentage matches 50.. run title @p actionbar ["",{"translate":"exp_screentxt_position_actionbar"},{"text":"\u25c0"},{"score":{"name":"@p","objective":"exp.x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.z"}},{"text":"\u25b6     "},{"translate":"exp_screentxt_fuel_actionbar"},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"exp.fuel_percentage"},"color":"green"},{"text":"%\u25b6","color":"green"},{"text":" "}]
execute if score @s exp.fuel_percentage matches 10..50 run title @p actionbar ["",{"translate":"exp_screentxt_position_actionbar"},{"text":"\u25c0"},{"score":{"name":"@p","objective":"exp.x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.z"}},{"text":"\u25b6     "},{"translate":"exp_screentxt_fuel_actionbar"},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"exp.fuel_percentage"},"color":"green"},{"text":"%\u25b6","color":"green"},{"text":" "}]
execute if score @s exp.fuel_percentage matches ..10 run title @p actionbar ["",{"translate":"exp_screentxt_position_actionbar"},{"text":"\u25c0"},{"score":{"name":"@p","objective":"exp.x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.z"}},{"text":"\u25b6     "},{"translate":"exp_screentxt_fuel_actionbar"},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"exp.fuel_percentage"},"color":"green"},{"text":"%\u25b6","color":"green"},{"text":" "}]

execute if entity @p[tag=exp.fueling_rocket] run function expansion:vehicles/rocket/fuel

execute if score @s exp.timer_2 matches 1.. at @s run function expansion:vehicles/rocket/countdown

execute if entity @s[tag=exp.launching] at @s run function expansion:vehicles/rocket/propulsion

