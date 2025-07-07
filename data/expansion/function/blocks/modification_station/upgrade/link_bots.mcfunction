# put the vehicle in the origin of the snowball
execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run data modify storage expansion:owner data.store_UUID set from entity @s UUID

execute on passengers if entity @s[tag=exp.modstation.bot_link] on origin run function expansion:blocks/modification_station/mod_robots/link_to_vehicle

data remove storage expansion:owner data.store_UUID