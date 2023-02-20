# --- executed from expansion:global/global_blocks ---

# destroy the block if the barrel is destroyed
execute unless block ~ ~ ~ minecraft:barrel run function expansion:blocks/fabricator/destroy

# run some functions when a player is within interaction range, to reduce the number of unnecessary functions run per tick
execute if entity @p[distance=..6] run function expansion:blocks/fabricator/interaction

# remove the print timer cooldown. set to 85 in start_print
scoreboard players remove @s[scores={exp.timer_1=1..}] exp.timer_1 1

# stop the print when the timer runs out
execute if score @s exp.timer_1 matches 1 run function expansion:blocks/fabricator/printing/stop_print
