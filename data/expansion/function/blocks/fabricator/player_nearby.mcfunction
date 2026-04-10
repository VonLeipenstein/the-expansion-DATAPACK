# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/player_nearby
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/fabricator/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# functions that run when the barrel is open(when a player interacts with it)
execute if entity @s[tag=exp.barrel_open] run function expansion:blocks/fabricator/crafting

# run the flash animation, regulated from prepare_print
execute if score @s exp.cooldown matches 1.. run function expansion:blocks/fabricator/gui/flash

# remove the display items when their respective item is removed from the block inventory
execute unless score @s exp.timer_1 matches 1.. unless items block ~ ~ ~ container.15 * run function expansion:blocks/fabricator/remove_display
