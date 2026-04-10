# >>> generated function callers >>>
# Callers for expansion:spacesuits/module_icons/display_icon
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 1/3 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/effects/storage_loop (1 caller) [WARN side/down 7]
# - function expansion:items/oxygen_tank/copy_to_chestplate (1 caller) [WARN side/down 4]
# - function expansion:spacesuits/module_icons/storage_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Adapt the icon of oxygen tanks to their level
execute if data storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.lvl run function expansion:spacesuits/module_icons/find_tank_icon

# if the module has no icon (empty module)
execute unless data storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer1 run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer1 set value "＀"
execute unless data storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2 run data modify storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2 set value "ﬀ"

# merge the icon to the storage
data modify storage expansion:temp icons.layer1 append from storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer1
data modify storage expansion:temp icons.layer2 append from storage expansion:temp ModStorage[0].components."minecraft:custom_data".icon.layer2