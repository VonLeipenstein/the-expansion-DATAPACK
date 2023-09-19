execute at @s unless predicate expansion:utility/sneak as @e[type=minecraft:interaction,tag=exp.module_rcdet,nbt={interaction:{}},limit=1,sort=nearest] on vehicle unless score @s exp.passenger_count matches 2.. on passengers if entity @s[type=interaction,tag=exp.module_rcdet] run function expansion:vehicles/lunar_module/enter

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/module_rc