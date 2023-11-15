# enter a rocket seat according to some conditions
execute at @s unless predicate expansion:utility/sneak as @e[type=minecraft:interaction,tag=exp.rocket_rcdet,nbt={interaction:{}},limit=1,sort=nearest] run function expansion:vehicles/rocket/enter/init

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/rocket_rc