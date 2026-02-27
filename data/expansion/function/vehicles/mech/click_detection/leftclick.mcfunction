# lefthand actions
execute if predicate expansion:riding/mech on vehicle on vehicle on passengers if entity @s[tag=exp.left_arm_control] run function expansion:vehicles/mech/actions/input

# demounting
#execute unless predicate expansion:riding/mech unless predicate expansion:utility/sneak positioned ^ ^ ^2.5 as @e[type=minecraft:armor_stand,tag=exp.mech,distance=..2.5,limit=1,sort=nearest] on passengers if entity @s[tag=exp.mech_seat] unless predicate expansion:passengers/player on vehicle run function expansion:vehicles/mech/demount

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/mech_lc