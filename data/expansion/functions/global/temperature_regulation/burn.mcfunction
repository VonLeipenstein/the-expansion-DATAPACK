function expansion:utilities/timers/1_sec_timer
execute if score @s exp.timer_1 matches 0 run damage @s 1 minecraft:in_fire
particle flame ~ ~1 ~ 0.2 0.5 0.2 0 2
function expansion:utilities/error_messages/high_temperature
