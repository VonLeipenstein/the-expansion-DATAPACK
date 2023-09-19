tag @s remove exp.trying_transition
tag @s remove exp.inside_rocket
tag @s remove exp.summoned_new_module
tag @s remove exp.rocket_pilot
effect clear @s levitation
effect clear @s blindness

tag @s add exp.inside_module

execute on vehicle on vehicle run scoreboard players add @s exp.passenger_count 1