tag @s remove exp.trying_transition
tag @s remove exp.inside_module
tag @s remove exp.summoned_new_capsule
tag @s remove exp.module_pilot
effect clear @s levitation
effect clear @s blindness

tag @s add exp.inside_capsule

execute on vehicle on vehicle run scoreboard players add @s exp.passenger_count 1