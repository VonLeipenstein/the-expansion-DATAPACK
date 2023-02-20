execute store result score exp.damage exp.durability run data get entity @s SelectedItem.tag.ExpDamage
execute store result score exp.max exp.durability run data get entity @s SelectedItem.tag.ExpDurability
execute store result storage exp.custom_durability ExpDamage int 1 run scoreboard players add exp.damage exp.durability 1
scoreboard players operation exp.damage exp.durability -= exp.max exp.durability
scoreboard players operation exp.damage exp.durability *= #-250 exp.durability
scoreboard players operation exp.damage exp.durability /= exp.max exp.durability
item modify entity @s weapon.mainhand expansion:custom_durability/update_dur_iron