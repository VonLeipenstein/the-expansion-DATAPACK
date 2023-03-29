effect give @s levitation 1 3 true
execute anchored feet run function expansion:items/rocket_boots/particles
playsound expansion:rboots.ascend player @s[tag=!exp.boosting] ~ ~-2 ~
execute unless block ~ ~2 ~ #expansion:expansion_air run function expansion:items/rocket_boots/turn_off
