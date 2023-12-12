execute if score @s exp.timer_2 matches 1.. run function expansion:vehicles/lunar_module/countdown

execute if score @s exp.timer_2 matches 0 run function expansion:vehicles/lunar_module/propulsion

# store players position
function expansion:player/store_position
execute on passengers on passengers run title @s actionbar ["",{"translate":"exp_screentxt_position_actionbar"},{"text":"\u25c0"},{"score":{"name":"@s","objective":"exp.x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@s","objective":"exp.y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@s","objective":"exp.z"}},{"text":"\u25b6"}]