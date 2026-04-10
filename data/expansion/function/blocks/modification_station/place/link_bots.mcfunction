# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/place/link_bots
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 1/3 honored
# Sources:
# - function expansion:blocks/modification_station/place/setup (1 caller) [OK same-folder]
# - function expansion:mobs/mech/bots/summon (1 caller) [WARN side/down 6]
# - function expansion:vehicles/mech/summon/summon_bots (1 caller) [WARN side/down 6]
# <<< generated function callers <<<

# don't summon new drones if a drone already exists
execute on origin if entity @s[tag=exp.mod_drone] run return fail

# summon a new drone
execute summon item_display run function expansion:blocks/modification_station/place/summon_bots
function expansion:utilities/snowball_link/link_from_storage