# >>> generated function callers >>>
# Callers for expansion:blocks/lacrymae_extractor/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# Destroy the block if the dropper is gone
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/lacrymae_extractor/destroy

# Start extraction if conditions are met
execute unless score @s exp.timer_1 matches 1.. if function expansion:blocks/lacrymae_extractor/check_valid run scoreboard players set @s exp.timer_1 120

# while extracting
execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/lacrymae_extractor/extract/main

# GUI
execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/lacrymae_extractor/gui