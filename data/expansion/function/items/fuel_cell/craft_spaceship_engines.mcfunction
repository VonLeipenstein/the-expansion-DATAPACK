# >>> generated function callers >>>
# Callers for expansion:items/fuel_cell/craft_spaceship_engines
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/fabricator/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

loot replace entity @s container.0 loot expansion:items/spaceship_engines

data modify entity @s item.components."minecraft:custom_data".fuel_cell set from block ~ ~ ~ Items[{Slot:2b}]