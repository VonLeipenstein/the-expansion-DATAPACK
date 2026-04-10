# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/spaceship/apply_mods/store_skin_cmd
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/spaceship/apply_mods/initiate (1 caller) [OK same-folder]
# <<< generated function callers <<<

data modify entity @s data.ModStorage.skin set from block ~ ~ ~ Items[{Slot:5b}]

data remove entity @s data.ModStorage.skin.components.minecraft:custom_model_data.strings[1]
