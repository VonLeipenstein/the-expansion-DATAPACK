# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/mod_robots/link_to_vehicle
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/link_bots (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

data modify storage expansion:owner data.current_UUID set from storage expansion:owner data.store_UUID

execute on passengers run function expansion:utilities/snowball_link/link_from_storage