# --- executed from expansion:global/global_blocks ---

# destroy the block if the barrel is destroyed
execute unless block ~ ~ ~ minecraft:barrel run function expansion:blocks/fabricator/destroy

# run some functions when a player is within interaction range
execute if entity @p[distance=..6] run function expansion:blocks/fabricator/interaction

# run when printing
execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/fabricator/printing/main
