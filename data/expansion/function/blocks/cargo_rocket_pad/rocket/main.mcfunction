execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/cargo_rocket_pad/rocket/launching

execute if score @s exp.timer_2 matches 1.. run function expansion:blocks/cargo_rocket_pad/rocket/waiting

execute if entity @s[tag=exp.landing] run function expansion:blocks/cargo_rocket_pad/rocket/landing