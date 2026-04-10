# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/link_bots
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# put the vehicle in the origin of the snowball
execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run data modify storage expansion:owner data.store_UUID set from entity @s UUID

execute on passengers if entity @s[tag=exp.modstation.bot_link] on origin run function expansion:blocks/modification_station/mod_robots/link_to_vehicle

data remove storage expansion:owner data.store_UUID