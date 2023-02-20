# place vehicles
execute if predicate expansion:nbt_checks/selected_item/vehicles/vehicle run function expansion:global/global_rightclick/vehicles
execute if predicate expansion:nbt_checks/selected_item/blocks/block if block ~ ~1.75 ~ #expansion:expansion_airliq run function expansion:global/global_rightclick/blocks
execute if predicate expansion:nbt_checks/selected_item/items/tool run function expansion:global/global_rightclick/tools

# reset scoreboard
scoreboard players reset @s[scores={exp.warmup=0}] exp.warmup

