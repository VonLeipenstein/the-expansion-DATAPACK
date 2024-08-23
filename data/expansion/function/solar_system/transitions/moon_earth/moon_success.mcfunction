tag @s remove exp.trying_transition
tag @s remove exp.inside_rocket
tag @s remove exp.summoned_new_module
effect clear @s levitation
effect clear @s blindness

tag @s add exp.inside_module
tag @s[tag=exp.rocket_pilot] add exp.module_pilot

tag @s remove exp.rocket_pilot

execute on vehicle on vehicle run scoreboard players add @s exp.passenger_count 1