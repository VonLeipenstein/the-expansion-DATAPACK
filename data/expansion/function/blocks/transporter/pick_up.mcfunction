# >>> generated function callers >>>
# Callers for expansion:blocks/transporter/pick_up
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:items/transporter/transport_block/click_detection/leftclick (1 caller) [WARN side/down 6]
# <<< generated function callers <<<

# executed as the pocket space armor stand but at the location of the player
execute at @s run playsound block.metal.break block @a[distance=..16] ~ ~ ~

execute at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace barrier

loot spawn ~ ~ ~ loot expansion:tools/pocket_space

execute at @s run data modify entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{exp_item:{name:"pocket_space"}}}}}] Item set from entity @s item

data merge entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{exp_item:{name:"pocket_space"}}}}}] {PickupDelay:0s}

execute on passengers run kill @s

kill @s