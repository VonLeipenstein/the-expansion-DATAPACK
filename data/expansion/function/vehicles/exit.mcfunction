# Remain inside the exited vehicle if you're landing on the earth or moon
execute if entity @s[tag=exp.inside_rocket] if entity @s[tag=exp.rocket_pilot] as @n[type=armor_stand,tag=exp.rocket,distance=..10] unless entity @s[nbt={OnGround:1b}] unless predicate expansion:riding/launch_pad on passengers if entity @s[tag=exp.rocket_pilot_seat] run return run ride @p[tag=exp.tick_player] mount @s
execute if entity @s[tag=exp.inside_rocket] if entity @s[tag=!exp.rocket_pilot] as @n[type=armor_stand,tag=exp.rocket,distance=..10] unless entity @s[nbt={OnGround:1b}] unless predicate expansion:riding/launch_pad on passengers on passengers on passengers if entity @s[tag=exp.rocket_pilot_seat] run return run ride @p[tag=exp.tick_player] mount @s
# force players to be inside if the vehicle is not on the ground
execute if entity @s[tag=exp.inside_module] as @n[type=armor_stand,tag=exp.lunar_module,distance=..10] unless entity @s[nbt={OnGround:1b}] on passengers if entity @s[tag=exp.module_seats] run return run ride @p[tag=exp.tick_player] mount @s
# force players to be inside if the vehicle is not on the ground
execute if entity @s[tag=exp.inside_capsule] as @n[type=armor_stand,tag=exp.return_capsule,distance=..10] unless entity @s[nbt={OnGround:1b}] run return run ride @p[tag=exp.tick_player] mount @s

# Runs from expansion:vehicles/main
execute if entity @s[tag=exp.inside_rocket] run return run function expansion:vehicles/rocket/exit/init
execute if entity @s[tag=exp.inside_spaceship] run return run function expansion:vehicles/spaceship/exits/passenger
execute if entity @s[tag=exp.inside_buggy] run return run function expansion:vehicles/buggy/exit/init
execute if entity @s[tag=exp.inside_module] run return run function expansion:vehicles/lunar_module/exit/init
execute if entity @s[tag=exp.inside_capsule] run return run function expansion:vehicles/return_capsule/exit
execute if entity @s[tag=exp.inside_mech] run return run function expansion:vehicles/mech/exit/init