execute unless entity @s[nbt={SelectedItem:{tag:{lacrymae:1b}}}] unless predicate expansion:utility/sneak as @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] unless entity @s[tag=exp.being_modified] run function expansion:vehicles/spaceship/enter

execute if entity @s[nbt={SelectedItem:{tag:{lacrymae:1b}}}] as @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest,distance=..5] run function expansion:vehicles/spaceship/fuel/fill_tank

advancement revoke @s only expansion:utility/spaceship_rc