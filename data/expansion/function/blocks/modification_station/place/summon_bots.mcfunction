# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/place/summon_bots
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/place/link_bots (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s add exp.mod_drone
tag @s add exp.mod_drone.new

tp @s ~ ~2 ~

item replace entity @s container.0 with jigsaw[item_model="expansion:mobs/mod_drone"]

data merge entity @s {teleport_duration:1}

data modify storage expansion:owner data.current_UUID set from entity @s UUID

tag @s remove exp.mod_drone.new
