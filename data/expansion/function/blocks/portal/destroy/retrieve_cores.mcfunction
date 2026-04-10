# >>> generated function callers >>>
# Callers for expansion:blocks/portal/destroy/retrieve_cores
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/portal/destroy/destroy_portal (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if items entity @s container.0 *[minecraft:custom_data~{blue_core:1b}] run loot spawn ~ ~ ~ loot expansion:items/portal_core_blue
execute if items entity @s container.0 *[minecraft:custom_data~{green_core:1b}] run loot spawn ~ ~ ~ loot expansion:items/portal_core_green
execute if items entity @s container.0 *[minecraft:custom_data~{red_core:1b}] run loot spawn ~ ~ ~ loot expansion:items/portal_core_red
execute if items entity @s container.0 *[minecraft:custom_data~{purple_core:1b}] run loot spawn ~ ~ ~ loot expansion:items/portal_core_purple
execute if items entity @s container.0 *[minecraft:custom_data~{yellow_core:1b}] run loot spawn ~ ~ ~ loot expansion:items/portal_core_yellow

kill @s
