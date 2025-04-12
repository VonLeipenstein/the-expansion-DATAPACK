# runs when fueling
execute if entity @p[tag=exp.fueling_rocket] run function expansion:vehicles/rocket/fuel

# runs while launching
execute if score @s exp.timer_2 matches 1.. at @s run function expansion:vehicles/rocket/countdown

# runs while flying upwards
execute if entity @s[tag=exp.launching] at @s run function expansion:vehicles/rocket/propulsion

# actionbar
execute if predicate expansion:periodic/5 run function expansion:vehicles/rocket/actionbar