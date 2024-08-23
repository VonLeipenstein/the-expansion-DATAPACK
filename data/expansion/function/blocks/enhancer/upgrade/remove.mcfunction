execute unless items block ~ ~ ~ container.0 * if data block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.oxygen_tank run function expansion:blocks/enhancer/upgrade/remove/oxygen_tank
execute unless items block ~ ~ ~ container.3 * if data block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.protection run function expansion:blocks/enhancer/upgrade/remove/protection
execute unless items block ~ ~ ~ container.6 * if data block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.utility run function expansion:blocks/enhancer/upgrade/remove/utility

execute on passengers run item replace entity @s container.0 from block ~ ~ ~ container.5
