function expansion:utilities/wasd_detection/mounted
execute on vehicle on vehicle at @s run function expansion:vehicles/buggy/inside
execute unless entity @s[predicate=expansion:nbt_checks/root_vehicle/buggy] run function expansion:vehicles/buggy/exit
