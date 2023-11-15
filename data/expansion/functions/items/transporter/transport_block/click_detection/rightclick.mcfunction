tag @s add exp.transporting
execute unless predicate expansion:utility/sneak unless predicate expansion:dimension/storage at @e[type=minecraft:interaction,tag=exp.transporter_rcdet,nbt={interaction:{}},limit=1,sort=nearest] as @e[type=minecraft:armor_stand,tag=exp.transporter,limit=1,sort=nearest] at @s run function expansion:items/transporter/initiate_transport
data remove entity @e[type=minecraft:interaction,tag=exp.transporter_rcdet,nbt={interaction:{}},limit=1,sort=nearest] interaction
advancement revoke @s only expansion:utility/transporter_rc
tag @s remove exp.transporting