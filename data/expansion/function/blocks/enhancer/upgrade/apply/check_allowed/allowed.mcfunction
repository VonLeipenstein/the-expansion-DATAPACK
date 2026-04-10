# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/check_allowed/allowed
# Total callers: 5 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/storage_loop (5 callers) [OK above +1]
# <<< generated function callers <<<

# fail if this module slot doesn't exist
execute unless data storage expansion:temp ModStorage[0] run return fail

# fail if there already is a module in the equipment
execute if data storage expansion:temp ModStorage[0].id run return fail

return 1