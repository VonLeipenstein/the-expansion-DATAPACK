execute if items block ~ ~ ~ container.0 carrot_on_a_stick[custom_data~{oxygen_tank:1b}] unless data block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.oxygen_tank.components.minecraft:custom_data.oxygen_tank run function expansion:blocks/enhancer/upgrade/oxygen_tank
execute if items block ~ ~ ~ container.3 jigsaw[custom_data~{protection_mod:1b}] unless data block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.protection run function expansion:blocks/enhancer/upgrade/protection
execute if items block ~ ~ ~ container.6 jigsaw[custom_data~{utility_mod:1b}] unless data block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.utility run function expansion:blocks/enhancer/upgrade/utility

execute on passengers run item replace entity @s container.0 from block ~ ~ ~ container.5
