advancement revoke @s only expansion:utility/buggy_lc

tag @s add exp.hitting_buggy

# stop further execution if the 
execute if predicate expansion:nbt_checks/root_vehicle/buggy run return run tag @s remove exp.hitting_buggy

# demount the buggy, only possible in creative
execute if entity @s[gamemode=creative] positioned ^ ^ ^2.5 as @e[type=minecraft:interaction,tag=exp.buggy_rcdet,distance=..2.5,limit=1,sort=nearest] on vehicle unless entity @s[tag=exp.has_passenger] run function expansion:vehicles/buggy/demount

# dismantle the buggy
execute as @n[type=minecraft:interaction,tag=exp.buggy_rcdet,nbt={attack:{}}] on vehicle run function expansion:vehicles/buggy/dismantle


tag @s remove exp.hitting_buggy
