# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/demount
# Total callers: 0
# None found
# <<< generated function callers <<<

execute as @p if entity @s[gamemode=!creative] at @s run loot spawn ~ ~ ~ loot expansion:vehicles/mech

execute store result entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{exp_item:{name:"mech"}}}}},limit=1,sort=nearest] Item.components."minecraft:custom_data".mech_left_id int 1 on passengers if entity @s[tag=exp.left_arm_control] run scoreboard players get @s exp.mech_action_id
execute store result entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{exp_item:{name:"mech"}}}}},limit=1,sort=nearest] Item.components."minecraft:custom_data".mech_right_id int 1 on passengers if entity @s[tag=exp.right_arm_control] run scoreboard players get @s exp.mech_action_id
data merge entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{exp_item:{name:"mech"}}}}},limit=1,sort=nearest] {PickupDelay:0s}

execute on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/remove/this
execute on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/remove/this

playsound block.metal.break block @a ~ ~ ~

execute on passengers if entity @s[tag=exp.mech.bot_link] on origin run kill @s

execute on passengers run function expansion:utilities/erase_entity
kill @s


