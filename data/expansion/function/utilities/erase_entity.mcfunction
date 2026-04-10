# >>> generated function callers >>>
# Callers for expansion:utilities/erase_entity
# Total callers: 6 from 6 source(s)
# Folder rule (function callers): 0/6 honored
# Sources:
# - function expansion:blocks/tesla_coil/transform_mob (1 caller) [WARN side/down 3]
# - function expansion:mobs/evil_drone/death (1 caller) [WARN side/down 3]
# - function expansion:mobs/mech/health/die/finish (1 caller) [WARN side/down 5]
# - function expansion:vehicles/lunar_module/convert_to_capsule/seat (1 caller) [WARN side/down 4]
# - function expansion:vehicles/lunar_module/delete (1 caller) [WARN side/down 3]
# - function expansion:vehicles/mech/demount (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

# Overlayed on 1.21.6+
function expansion:utilities/reset_waypoint

ride @s dismount
tp @s ~ 1000 ~
data merge entity @s {Health:0.0f,DeathLootTable:"expansion:empty",Silent:1b}
kill @s