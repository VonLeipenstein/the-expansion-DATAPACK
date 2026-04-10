# >>> generated function callers >>>
# Callers for expansion:blocks/assembler/craft_spaceship
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/assembler/recipes (1 caller) [OK same-folder]
# <<< generated function callers <<<

loot replace entity @s container.0 loot expansion:vehicles/spaceship

data modify entity @s item.components."minecraft:custom_data".fuel_cell set from block ~ ~ ~ Items[{components:{"minecraft:custom_data":{exp_item:{name:"spaceship_engines"}}}}].components."minecraft:custom_data".fuel_cell