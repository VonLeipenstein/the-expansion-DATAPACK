execute unless predicate expansion:nbt_checks/root_vehicle/eject_chair run function expansion:vehicles/spaceship/exits/ejection/exit_chair
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 10
execute on vehicle if entity @s[nbt={OnGround:1b}] run function expansion:vehicles/spaceship/exits/ejection/exit_chair