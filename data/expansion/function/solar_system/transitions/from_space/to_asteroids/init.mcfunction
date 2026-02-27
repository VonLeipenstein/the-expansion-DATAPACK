# triggers when not inside the ship
execute if entity @s[predicate=expansion:riding/spaceship,tag=exp.spaceship_pilot] run return run function expansion:solar_system/transitions/from_space/to_asteroids/prepare

execute unless predicate expansion:riding/spaceship in expansion:asteroids run tp @s ~ 300 ~ ~ 35