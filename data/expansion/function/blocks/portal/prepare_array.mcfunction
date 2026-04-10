# >>> generated function callers >>>
# Callers for expansion:blocks/portal/prepare_array
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:blocks/portal/activation/check_matches (1 caller) [WARN side/down 1]
# - function expansion:blocks/portal/teleport/teleportation_stage_0 (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

# Copy the entire portal array to a placeholder array so I can safely perform operations on it.
data modify storage expansion:portal portal_out set from storage expansion:portal portal_array

# Run the function that searches the array for portals with a matching color code.
function expansion:blocks/portal/activation/search_match_code

# The function above also finds the current portals entry. This function identifies the current portal and puts it at the end of the array.
execute store result score #temp exp.hold_count run data get storage expansion:portal portal_out
function expansion:blocks/portal/teleport/filter_self
