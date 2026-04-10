# >>> generated function callers >>>
# Callers for expansion:blocks/portal/deactivation/deactivate_portal
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/portal/cores/remove_core_count (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# Search the current portal in the global portal array and remove its entry.
function expansion:blocks/portal/deactivation/search_match_id

function expansion:blocks/portal/deactivation/pause_portal

# vfx
playsound expansion:portal.shutdown block @a[distance=..16] ~ ~1.15 ~ 1
particle poof ~ ~1.15 ~ 0 0 0 0 5
