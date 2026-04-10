# >>> generated function callers >>>
# Callers for expansion:items/repair_kit/use_charge
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/repair_kit/repair (1 caller) [OK same-folder]
# <<< generated function callers <<<

# deplete durability from the item
scoreboard players set #temp exp.damage 5000
item modify entity @s weapon.mainhand expansion:space_equipment/damage
scoreboard players reset #temp exp.damage

# if the damage is equal to the max damage, delete the item
execute store result score #temp exp.damage run data get entity @s SelectedItem.components."minecraft:damage"
execute store result score #temp2 exp.damage run data get entity @s SelectedItem.components."minecraft:max_damage"
execute if score #temp exp.damage = #temp2 exp.damage run item replace entity @s weapon.mainhand with air
scoreboard players reset #temp exp.damage
scoreboard players reset #temp2 exp.damage