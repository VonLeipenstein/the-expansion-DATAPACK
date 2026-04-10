# >>> generated function callers >>>
# Callers for expansion:player/rightclick/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:player/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# place blocks or vehicles
execute if predicate expansion:holding/placeable anchored eyes if block ~ ~ ~ #expansion:airliq run function expansion:utilities/raycast/placement/cast

# use tools
execute if predicate expansion:holding/tool run function expansion:player/rightclick/tools

# remove scoreboard
scoreboard players reset @s[scores={exp.warmup=0}] exp.warmup