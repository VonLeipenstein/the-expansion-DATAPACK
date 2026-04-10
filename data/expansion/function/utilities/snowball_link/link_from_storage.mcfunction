# >>> generated function callers >>>
# Callers for expansion:utilities/snowball_link/link_from_storage
# Total callers: 20 from 17 source(s)
# Folder rule (function callers): 1/17 honored
# Sources:
# - function expansion:blocks/launch_pad/place/setup_buttons (4 callers) [WARN side/down 5]
# - function expansion:blocks/modification_station/mod_robots/link_to_vehicle (1 caller) [WARN side/down 5]
# - function expansion:blocks/modification_station/place/link_bots (1 caller) [WARN side/down 5]
# - function expansion:blocks/modification_station/place/link_origin (1 caller) [WARN side/down 5]
# - function expansion:blocks/modification_station/select_vehicle/select (1 caller) [WARN side/down 5]
# - function expansion:blocks/modification_station/upgrade/finish (1 caller) [WARN side/down 5]
# - function expansion:blocks/oxygenator/oxygenate/create_origin_link (1 caller) [WARN side/down 5]
# - function expansion:blocks/oxygenator/oxygenate/fill_space/link_marker (1 caller) [WARN side/down 6]
# - function expansion:blocks/oxygenator/oxygenate/oxygen_link/finish (1 caller) [WARN side/down 6]
# - function expansion:blocks/portal/place/link_origin (1 caller) [WARN side/down 5]
# - function expansion:blocks/terraformer/oxygen_link/create (1 caller) [WARN side/down 5]
# - function expansion:mobs/mech/behavior/targeting/find_new (1 caller) [WARN side/down 6]
# - function expansion:mobs/mech/behavior/targeting/init (1 caller) [WARN side/down 6]
# - function expansion:projectiles/electric_arc/cast (1 caller) [WARN side/down 4]
# - function expansion:projectiles/homing_rocket/summon/setup (1 caller) [WARN side/down 5]
# - function expansion:utilities/snowball_link/finish_link (1 caller) [OK same-folder]
# - function expansion:vehicles/cargo_rocket/summon/setup (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

execute unless entity @s[type=snowball] run say DEBUG: This function should run as a snowball

data modify entity @s[type=minecraft:snowball] Owner set from storage expansion:owner data.current_UUID
data merge entity @s {NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:jigsaw",count:1,components:{"minecraft:item_model":"expansion:empty"}}}
data remove storage expansion:owner data.current_UUID
tag @s add exp.origin_link