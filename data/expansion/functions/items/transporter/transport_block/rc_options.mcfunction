tag @s add exp.transporting
execute if predicate expansion:utility/sneak positioned ^ ^ ^1.5 as @e[type=armor_stand,tag=exp.transporter,limit=1,sort=nearest] at @s run function expansion:items/transporter/transport_block/pick_up
execute unless predicate expansion:utility/sneak unless predicate expansion:dimension/storage as @e[type=armor_stand,tag=exp.transporter,limit=1,sort=nearest] at @s run function expansion:items/transporter/initiate_transport
advancement revoke @s only expansion:utility/transporter_rc
tag @s remove exp.transporting