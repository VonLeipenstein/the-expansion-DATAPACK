# execute the righthands action if the player is already inside the mech
execute if predicate expansion:nbt_checks/root_vehicle/mech on vehicle on vehicle unless score @s exp.cooldown matches 10.. run function expansion:vehicles/mech/click_detection/righthand

# enter the mech
execute unless predicate expansion:nbt_checks/root_vehicle/mech unless predicate expansion:utility/sneak run function expansion:vehicles/mech/enter

# revoke
advancement revoke @s only expansion:utility/mech_rc