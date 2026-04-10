# >>> generated function callers >>>
# Callers for expansion:utilities/barrel/gui/fill_slot
# Total callers: 212 from 12 source(s)
# Folder rule (function callers): 0/12 honored
# Sources:
# - function expansion:blocks/arc_furnace/gui (5 callers) [WARN side/down 5]
# - function expansion:blocks/assembler/gui (14 callers) [WARN side/down 5]
# - function expansion:blocks/enhancer/gui/main (26 callers) [WARN side/down 6]
# - function expansion:blocks/enhancer/gui/none (26 callers) [WARN side/down 6]
# - function expansion:blocks/fabricator/gui/gui (16 callers) [WARN side/down 6]
# - function expansion:blocks/lacrymae_extractor/gui (6 callers) [WARN side/down 5]
# - function expansion:blocks/modification_station/gui/buggy (24 callers) [WARN side/down 6]
# - function expansion:blocks/modification_station/gui/mech (23 callers) [WARN side/down 6]
# - function expansion:blocks/modification_station/gui/none (27 callers) [WARN side/down 6]
# - function expansion:blocks/modification_station/gui/spaceship (24 callers) [WARN side/down 6]
# - function expansion:blocks/oxygenator/gui/main (9 callers) [WARN side/down 6]
# - function expansion:blocks/terraformer/gui (12 callers) [WARN side/down 5]
# <<< generated function callers <<<

# If there is an item in this slot (which is NOT a gui item): Restore the item
$execute unless data block ~ ~ ~ Items[{Slot:$(Slot)b}].components."minecraft:custom_data".gui_item run data modify storage expansion:temp Item set from block ~ ~ ~ Items[{Slot:$(Slot)b}]
execute if data storage expansion:temp Item run function expansion:utilities/barrel/gui/restore_item

# replace the slot
$loot replace block ~ ~ ~ container.$(Slot) loot expansion:items/gui/$(Type)

# Also remove gui items from all nearby players
clear @a[distance=..10] minecraft:jigsaw[custom_data~{gui_item:1b}]