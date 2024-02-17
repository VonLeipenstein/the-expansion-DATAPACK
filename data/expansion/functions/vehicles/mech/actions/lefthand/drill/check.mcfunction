# drill upwards
execute on passengers on passengers if entity @s[type=player,x_rotation=-90..-45] on vehicle on vehicle on passengers rotated as @s[type=minecraft:item_display,tag=aj.mech_torso.root] rotated ~ 0 align xyz positioned ~ ~.5 ~.5 positioned ^ ^1 ^2 run function expansion:vehicles/mech/actions/lefthand/drill/drill

# drill downwards
execute on passengers on passengers if entity @s[type=player,x_rotation=45..90] on vehicle on vehicle on passengers rotated as @s[type=minecraft:item_display,tag=aj.mech_torso.root] rotated ~ 0 align xyz positioned ~ ~.5 ~.5 positioned ^ ^-1 ^2 run function expansion:vehicles/mech/actions/lefthand/drill/drill

# drill horizontally
execute on passengers on passengers if entity @s[type=player,x_rotation=-45..45] on vehicle on vehicle on passengers rotated as @s[type=minecraft:item_display,tag=aj.mech_torso.root] rotated ~ 0 align xyz positioned ~ ~.5 ~.5 positioned ^ ^ ^2 run function expansion:vehicles/mech/actions/lefthand/drill/drill
