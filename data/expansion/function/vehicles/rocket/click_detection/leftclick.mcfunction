# revoke the rightclick advancement
advancement revoke @s only expansion:utility/rocket_lc

tag @s add exp.hitting_rocket

# stop further running of this function if the player is inside the lunar lander
execute if predicate expansion:nbt_checks/root_vehicle/rocket run return run tag @s remove exp.hitting_rocket

# destroy the rocket, only possible in creative
execute if entity @s[gamemode=creative] unless predicate expansion:nbt_checks/selected_item/items/wrench as @n[type=minecraft:interaction,tag=exp.rocket_rcdet,nbt={attack:{}}] on vehicle run function expansion:vehicles/rocket/demount

# dismantle the rocket
execute as @n[type=minecraft:interaction,tag=exp.rocket_rcdet,nbt={attack:{}}] on vehicle run function expansion:vehicles/rocket/dismantle

tag @s remove exp.hitting_rocket
