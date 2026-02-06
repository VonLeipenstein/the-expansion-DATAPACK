execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/launch_pad/rocket/launching

execute if score @s exp.timer_2 matches 1.. run function expansion:blocks/launch_pad/rocket/waiting

execute if entity @s[tag=exp.landing] run function expansion:blocks/launch_pad/rocket/landing