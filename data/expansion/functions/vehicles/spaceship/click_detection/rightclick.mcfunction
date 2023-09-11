# enter
execute unless entity @s[nbt={SelectedItem:{tag:{lacrymae:1b}}}] unless predicate expansion:utility/sneak unless entity @s[tag=exp.inside_vehicle] as @e[type=minecraft:interaction,tag=exp.spaceship_rcdet,nbt={interaction:{}},limit=1,sort=nearest] on vehicle if entity @s[tag=exp.spaceship,tag=!exp.being_modified] unless score @s exp.passenger_count matches 2.. run function expansion:vehicles/spaceship/enter/passenger

# fuel
execute if entity @s[nbt={SelectedItem:{tag:{lacrymae:1b}}}] as @e[type=minecraft:interaction,tag=exp.spaceship_rcdet,nbt={interaction:{}},limit=1,sort=nearest] on vehicle run function expansion:vehicles/spaceship/fuel/fill_tank

# blasters
execute if predicate expansion:nbt_checks/root_vehicle/spaceship unless predicate expansion:nbt_checks/selected_item/blocks/planetarium unless predicate expansion:nbt_checks/selected_item/items/fleet_finder on vehicle on vehicle on passengers if data entity @s[type=interaction,tag=exp.spaceship_rcdet] interaction on vehicle unless score @s exp.counter_2 matches 1.. if score @s exp.speed matches 11.. run function expansion:vehicles/spaceship/blasters/determine_blaster

# reset advancement trigger
advancement revoke @s only expansion:utility/spaceship_rc