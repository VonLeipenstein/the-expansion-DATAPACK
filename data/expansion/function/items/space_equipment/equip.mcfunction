# swap the curent helmet of the player with the space equipment
execute summon armor_stand run function expansion:items/space_equipment/swap_helmet

# determine the players oxygen scores
execute store result score @s exp.oxygen_max run data get entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".ModStorage.oxygen_tank.components.minecraft:custom_data.oxygen_max
execute store result score @s exp.oxygen_lvl run data get entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".ModStorage.oxygen_tank.components.minecraft:custom_data.oxygen_lvl

# sound
playsound minecraft:item.armor.equip_iron player @a ~ ~ ~

scoreboard players operation #input exp.oxygen_lvl = @s exp.oxygen_lvl
scoreboard players operation #input exp.oxygen_max = @s exp.oxygen_max
function expansion:mechanics/oxygen/oxygen_percentage
scoreboard players reset #output exp.oxygen_percent

tag @s add exp.wearing_equipment