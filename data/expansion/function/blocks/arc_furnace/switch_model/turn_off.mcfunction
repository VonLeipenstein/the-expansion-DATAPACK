# >>> generated function callers >>>
# Callers for expansion:blocks/arc_furnace/switch_model/turn_off
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/arc_furnace/main (1 caller) [OK above +1]
# - function expansion:blocks/arc_furnace/melting/melt (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

tag @s remove exp.smelting

execute on passengers run item replace entity @s container.0 with air

execute if items block ~ ~ ~ container.1 *[custom_data~{gui_item:1b}] run data remove block ~ ~ ~ Items[{Slot:1b}].components.minecraft:custom_model_data.strings[1]

data remove entity @s item.components.minecraft:custom_model_data.strings[0]

scoreboard players set @s exp.timer_1 0
