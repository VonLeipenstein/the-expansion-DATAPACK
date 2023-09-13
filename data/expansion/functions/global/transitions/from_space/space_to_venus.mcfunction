# triggers when not inside the ship
execute unless entity @s[tag=exp.inside_spaceship] in expansion:venus run tp @s ~ 450 ~ ~ 89

execute if entity @s[tag=exp.inside_spaceship,tag=exp.spaceship_pilot] run function expansion:vehicles/spaceship/transition/teleports/to_venus/init
