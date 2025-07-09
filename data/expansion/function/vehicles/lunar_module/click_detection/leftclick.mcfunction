# revoke the rightclick advancement
advancement revoke @s only expansion:utility/module_lc

# stop further running of this function if the player is inside the lunar lander
execute if predicate expansion:nbt_checks/root_vehicle/lunar_module run return fail

# destroy the lunar module, only works in creative
execute if entity @s[gamemode=creative] unless predicate expansion:nbt_checks/selected_item/items/wrench as @n[type=minecraft:interaction,tag=exp.module_rcdet,nbt={attack:{}},distance=..10] run function expansion:vehicles/lunar_module/demount

# attempt to dismantle the lunar module (you cant)
execute as @n[type=minecraft:interaction,tag=exp.module_rcdet,nbt={attack:{}},distance=..10] run function expansion:vehicles/lunar_module/dismantle
