execute as @p if entity @s[gamemode=!creative] at @s run loot spawn ~ ~ ~ loot expansion:vehicles/mech

execute store result entity @e[type=item,nbt={Item:{tag:{mech:1b}}},limit=1,sort=nearest] Item.tag.mech_left_id int 1 run scoreboard players get @s exp.mech_left_id
execute store result entity @e[type=item,nbt={Item:{tag:{mech:1b}}},limit=1,sort=nearest] Item.tag.mech_right_id int 1 run scoreboard players get @s exp.mech_right_id
data merge entity @e[type=item,nbt={Item:{tag:{mech:1b}}},limit=1,sort=nearest] {PickupDelay:0s}

execute on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/remove/this
execute on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/remove/this

playsound block.metal.break block @a ~ ~ ~

execute on passengers run function expansion:utilities/erase_entity
kill @s


