execute on vehicle on vehicle run tag @s add exp.mech_attack.swing
execute on vehicle on vehicle run tag @s add exp.mech_attack_init

execute on vehicle on vehicle run scoreboard players set @s exp.timer_1 30

tag @s add exp.exit_mech
execute on vehicle on vehicle if score @s exp.delay matches 1.. run function expansion:vehicles/mech/exit/exit
tag @s remove exp.exit_mech