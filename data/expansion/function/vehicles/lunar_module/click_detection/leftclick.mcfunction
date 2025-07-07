# revoke the rightclick advancement
advancement revoke @s only expansion:utility/module_lc

# stop further running of this function if the player is inside the lunar lander
execute if predicate expansion:nbt_checks/root_vehicle/lunar_module run return fail

#execute unless predicate expansion:utility/sneak as @n[type=minecraft:interaction,tag=exp.module_rcdet,nbt={attack:{}},distance=..10] run function expansion:vehicles/lunar_module/demount
