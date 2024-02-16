# lefthand actions
execute if predicate expansion:nbt_checks/root_vehicle/mech on vehicle on vehicle run function expansion:vehicles/mech/click_detection/lefthand

# demounting
execute unless predicate expansion:nbt_checks/root_vehicle/mech unless predicate expansion:utility/sneak positioned ^ ^ ^2.5 as @e[type=minecraft:armor_stand,tag=exp.mech,distance=..2.5,limit=1,sort=nearest] on passengers if entity @s[tag=exp.mech_seat] unless predicate expansion:passengers/player on vehicle run function expansion:vehicles/mech/demount

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/mech_lc