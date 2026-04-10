# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/mech/remove_mods/righthand
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/mech/remove_mods/initiate (1 caller) [OK same-folder]
# <<< generated function callers <<<

loot replace block ~ ~ ~ container.14 loot expansion:items/gui/filler
data modify block ~ ~ ~ Items[{Slot:14b}] set from entity @s data.ModStorage.righthand
data remove entity @s data.ModStorage.righthand

execute on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/punch/equip