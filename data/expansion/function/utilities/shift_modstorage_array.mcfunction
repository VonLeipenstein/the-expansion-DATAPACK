# >>> generated function callers >>>
# Callers for expansion:utilities/shift_modstorage_array
# Total callers: 6 from 6 source(s)
# Folder rule (function callers): 0/6 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/effects/storage_loop (1 caller) [WARN side/down 6]
# - function expansion:blocks/enhancer/upgrade/apply/storage_loop (1 caller) [WARN side/down 5]
# - function expansion:spacesuits/get_armor_modules/get_module_stats/storage_loop (1 caller) [WARN side/down 4]
# - function expansion:spacesuits/module_icons/storage_loop (1 caller) [WARN side/down 3]
# - function expansion:spacesuits/oxygen/get_data/storage_loop (1 caller) [WARN side/down 4]
# - function expansion:spacesuits/oxygen/set_data/storage_loop (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

data modify storage expansion:temp ModStorage append from storage expansion:temp ModStorage[0]
data remove storage expansion:temp ModStorage[0]