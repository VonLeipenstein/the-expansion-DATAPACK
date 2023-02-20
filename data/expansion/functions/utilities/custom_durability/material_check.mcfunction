execute if data entity @s[gamemode=!creative,predicate=expansion:nbt_checks/selected_item/materials/iron] SelectedItem.tag.ExpDamage run function expansion:utilities/custom_durability/update_dur_iron
execute if data entity @s[gamemode=!creative,predicate=expansion:nbt_checks/selected_item/materials/diamond] SelectedItem.tag.ExpDamage run function expansion:utilities/custom_durability/update_dur_diamond
execute if data entity @s[gamemode=!creative,predicate=expansion:nbt_checks/selected_item/materials/netherite] SelectedItem.tag.ExpDamage run function expansion:utilities/custom_durability/update_dur_netherite

scoreboard players set @s[scores={exp.use_tool=1..}] exp.use_tool 0
