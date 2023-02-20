function expansion:utilities/timers/1_sec_timer
execute if score @s exp.timer_1 matches 0 run damage @s 1 minecraft:freeze
particle falling_dust snow_block ~ ~1.7 ~ 0.3 00.3 0.3 0 2
function expansion:utilities/error_messages/low_temperature
