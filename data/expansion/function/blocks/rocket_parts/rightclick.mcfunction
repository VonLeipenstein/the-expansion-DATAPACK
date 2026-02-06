advancement revoke @s only expansion:utility/rocketpart_rc

tag @s add exp.clicked
execute if predicate expansion:nbt_checks/selected_item/blocks/rocket_bottom as @n[type=minecraft:interaction,tag=exp.rocketpart_rcdet,nbt={interaction:{}},distance=..10] if function expansion:utilities/remove_interaction at @s run function expansion:blocks/rocket_parts/engines/place
execute if predicate expansion:nbt_checks/selected_item/blocks/rocket_cockpit as @n[type=minecraft:interaction,tag=exp.rocketpart_rcdet,nbt={interaction:{}},distance=..10] if function expansion:utilities/remove_interaction at @s run function expansion:blocks/rocket_parts/cockpit/place
execute if predicate expansion:nbt_checks/selected_item/blocks/rocket_top as @n[type=minecraft:interaction,tag=exp.rocketpart_rcdet,nbt={interaction:{}},distance=..10] if function expansion:utilities/remove_interaction at @s run function expansion:blocks/rocket_parts/top/place
tag @s remove exp.clicked