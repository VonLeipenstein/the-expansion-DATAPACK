# >>> generated function callers >>>
# Callers for expansion:utilities/percentage
# Total callers: 22 from 17 source(s)
# Folder rule (function callers): 0/17 honored
# Sources:
# - function expansion:blocks/compressor/compress/insert_oxygen (1 caller) [WARN side/down 4]
# - function expansion:blocks/enhancer/upgrade/apply/effects/oxygen_percent (1 caller) [WARN side/down 6]
# - function expansion:blocks/enhancer/upgrade/remove/oxygen_tank (1 caller) [WARN side/down 5]
# - function expansion:blocks/lacrymae_extractor/extract/finish (1 caller) [WARN side/down 4]
# - function expansion:blocks/modification_station/upgrade/buggy/remove_mods/oxygen_tank (1 caller) [WARN side/down 6]
# - function expansion:items/fuel_cell/craft_mk2 (1 caller) [WARN side/down 3]
# - function expansion:items/oxygen_tank/copy_to_chestplate (1 caller) [WARN side/down 3]
# - function expansion:items/oxygen_tank/copy_to_tank (1 caller) [WARN side/down 3]
# - function expansion:items/oxygen_tank/refill_equipment (1 caller) [WARN side/down 3]
# - function expansion:mechanics/oxygen/fill_tank_from_buggy (2 callers) [WARN side/down 3]
# - function expansion:spacesuits/extract_scores (4 callers) [WARN side/down 2]
# - function expansion:spacesuits/module_icons/find_tank_icon (1 caller) [WARN side/down 3]
# - function expansion:spacesuits/oxygen/get_data/init_loop (1 caller) [WARN side/down 4]
# - function expansion:spacesuits/oxygen/replenish_from_tank (1 caller) [WARN side/down 3]
# - function expansion:spacesuits/oxygen/set_data/merge_score (1 caller) [WARN side/down 4]
# - function expansion:vehicles/buggy/text_display (1 caller) [WARN side/down 3]
# - function expansion:vehicles/mech/actionbar (2 callers) [WARN side/down 3]
# <<< generated function callers <<<

scoreboard players reset #output exp.percentage
scoreboard players operation #input exp.math *= #100 exp.const
execute store result score #output exp.percentage run scoreboard players operation #input exp.math /= #max exp.math
return run scoreboard players get #output exp.percentage