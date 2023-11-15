# place vehicles unless the player is inside a vehicle
execute if predicate expansion:nbt_checks/selected_item/vehicles/vehicle unless entity @s[tag=exp.inside_vehicle] run function expansion:global/global_rightclick/place_vehicles

# place blocks unless the player is inside a vehicle or block
execute if predicate expansion:nbt_checks/selected_item/blocks/block unless entity @s[tag=exp.inside_vehicle] anchored eyes if block ~ ~ ~ #expansion:expansion_airliq run function expansion:global/global_rightclick/place_blocks

# use tools
execute if predicate expansion:nbt_checks/selected_item/items/tool run function expansion:global/global_rightclick/tools

# remove scoreboard
scoreboard players reset @s[scores={exp.warmup=0}] exp.warmup

