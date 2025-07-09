# reset advancement trigger
advancement revoke @s only expansion:utility/spaceship_rc

# enter
tag @s add exp.clicked_ship
execute at @s unless items entity @s weapon.mainhand *[minecraft:custom_data~{exp_item:{name:"fuel_cell"}}] unless predicate expansion:utility/sneak unless entity @s[tag=exp.inside_vehicle] as @e[type=minecraft:interaction,tag=exp.spaceship_rcdet,nbt={interaction:{}},limit=1,sort=nearest] on vehicle if entity @s[tag=exp.spaceship,tag=!exp.being_modified] unless score @s exp.passenger_count matches 2.. run function expansion:vehicles/spaceship/enter/passenger

# blasters
execute at @s if predicate expansion:nbt_checks/root_vehicle/spaceship unless predicate expansion:nbt_checks/selected_item/blocks/planetarium unless predicate expansion:nbt_checks/selected_item/items/fleet_finder on vehicle on vehicle on passengers if data entity @s[type=interaction,tag=exp.spaceship_rcdet] interaction on vehicle unless score @s exp.counter_2 matches 1.. if score @s exp.speed matches 11.. rotated as @s run function expansion:vehicles/spaceship/blasters/choose

# fleet finder
execute at @s if predicate expansion:nbt_checks/root_vehicle/spaceship if predicate expansion:nbt_checks/selected_item/items/fleet_finder run function expansion:items/fleet_finder/find

# stop further functions
execute if predicate expansion:nbt_checks/root_vehicle/spaceship run return run tag @s remove exp.clicked_ship

# fuel
execute at @s if items entity @s weapon.mainhand *[minecraft:custom_data~{exp_item:{name:"fuel_cell"}}] as @e[type=minecraft:interaction,tag=exp.spaceship_rcdet,nbt={interaction:{}},limit=1,sort=nearest] on vehicle run function expansion:vehicles/spaceship/fuel/swap_cell

tag @s remove exp.clicked_ship