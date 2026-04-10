# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/interaction
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/player_nearby (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute unless items block ~ ~ ~ container.11 * run function expansion:blocks/enhancer/gui/buttons/enhance
execute unless items block ~ ~ ~ container.18 * run function expansion:blocks/enhancer/gui/buttons/repair
execute unless items block ~ ~ ~ container.26 * run function expansion:blocks/enhancer/gui/buttons/remove

# add the equipment to the display if there is one in the block
execute if items block ~ ~ ~ container.10 *[minecraft:custom_data~{exp.enhanceable:1b}] unless items entity @s contents * run function expansion:blocks/enhancer/display_helmet