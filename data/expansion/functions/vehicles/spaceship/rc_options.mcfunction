#execute unless entity @s[predicate=expansion:nbt_checks/armor/space_equipment/equipment] unless entity @s[nbt={SelectedItem:{tag:{lacrymae:1b}}}] run function expansion:utilities/error_messages/equip_space_equipment
execute unless entity @s[nbt={SelectedItem:{tag:{lacrymae:1b}}}] run function expansion:vehicles/spaceship/enter

execute if entity @s[nbt={SelectedItem:{tag:{lacrymae:1b}}}] as @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest,distance=..5] at @s run function expansion:vehicles/spaceship/fuel

advancement revoke @s only expansion:utility/spaceship_rc