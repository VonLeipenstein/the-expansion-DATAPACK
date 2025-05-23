# place blocks or vehicles
execute if predicate expansion:nbt_checks/selected_item/placeable anchored eyes if block ~ ~ ~ #expansion:airliq run function expansion:utilities/raycast/placement/cast

# use tools
execute if predicate expansion:nbt_checks/selected_item/items/tool run function expansion:player/rightclick/tools

# remove scoreboard
scoreboard players reset @s[scores={exp.warmup=0}] exp.warmup