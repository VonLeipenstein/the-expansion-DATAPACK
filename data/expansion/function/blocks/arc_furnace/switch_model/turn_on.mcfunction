# >>> generated function callers >>>
# Callers for expansion:blocks/arc_furnace/switch_model/turn_on
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/arc_furnace/melting/start_melting (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

tag @s add exp.smelting

execute if items block ~ ~ ~ container.4 *[custom_data~{gui_item:1b}] run data modify block ~ ~ ~ Items[{Slot:4b}].components.minecraft:custom_model_data.strings insert 1 value "animated"

data modify entity @s item.components.minecraft:custom_model_data.strings insert 0 value "animated"
