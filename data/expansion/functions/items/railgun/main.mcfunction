execute store result score @s exp.ammo run data get entity @s SelectedItem.tag.ammo
execute if score @s exp.ammo matches 1.. run function expansion:items/railgun/warmup
execute unless score @s exp.ammo matches 1.. if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] run function expansion:items/railgun/reload
execute unless score @s exp.ammo matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] run playsound expansion:railgun.dry_fire player @a ~ ~ ~ 