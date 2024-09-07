# enter a rocket seat according to some conditions
execute at @s[tag=!exp.inside_vehicle] unless predicate expansion:utility/sneak as @n[type=minecraft:interaction,tag=exp.rocket_rcdet,nbt={interaction:{}}] run function expansion:vehicles/rocket/enter/init

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/rocket_rc