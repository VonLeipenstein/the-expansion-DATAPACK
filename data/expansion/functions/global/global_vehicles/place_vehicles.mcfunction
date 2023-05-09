# ---run from expansion:functions/global/global_rightclick/vehicles--- 
execute if predicate expansion:nbt_checks/selected_item/vehicles/moon_buggy run function expansion:vehicles/buggy/place
execute if predicate expansion:nbt_checks/selected_item/vehicles/spaceship run function expansion:vehicles/spaceship/place
execute if predicate expansion:nbt_checks/selected_item/vehicles/rocket run function expansion:vehicles/rocket/place
execute if predicate expansion:nbt_checks/selected_item/vehicles/lunar_module run function expansion:vehicles/lunar_module/place
execute if predicate expansion:nbt_checks/selected_item/vehicles/return_capsule run function expansion:vehicles/return_capsule/place
execute if predicate expansion:nbt_checks/selected_item/vehicles/mech run function expansion:vehicles/mech/place

item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:air
playsound block.metal.place block @s ~ ~ ~
