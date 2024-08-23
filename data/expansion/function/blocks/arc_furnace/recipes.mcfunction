# steel ingot
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:raw_iron"},{Slot:2b,id:"minecraft:coal"}]} run loot replace entity @s weapon.mainhand loot expansion:items/steel/steel_ingot
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:2b,id:"minecraft:coal"}]} run loot replace entity @s weapon.mainhand loot expansion:items/steel/steel_ingot
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:raw_iron"},{Slot:2b,id:"minecraft:charcoal"}]} run loot replace entity @s weapon.mainhand loot expansion:items/steel/steel_ingot
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:2b,id:"minecraft:charcoal"}]} run loot replace entity @s weapon.mainhand loot expansion:items/steel/steel_ingot

execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b,id:"minecraft:raw_iron"},{Slot:0b,id:"minecraft:coal"}]} run loot replace entity @s weapon.mainhand loot expansion:items/steel/steel_ingot
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:0b,id:"minecraft:coal"}]} run loot replace entity @s weapon.mainhand loot expansion:items/steel/steel_ingot
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b,id:"minecraft:raw_iron"},{Slot:0b,id:"minecraft:charcoal"}]} run loot replace entity @s weapon.mainhand loot expansion:items/steel/steel_ingot
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:0b,id:"minecraft:charcoal"}]} run loot replace entity @s weapon.mainhand loot expansion:items/steel/steel_ingot

# amethonium ingot
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:jigsaw",components:{"minecraft:custom_data":{raw_titanium:1b}}},{Slot:2b,id:"minecraft:amethyst_shard"}]} run loot replace entity @s weapon.mainhand loot expansion:items/materials/amethonium_ingot
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b,id:"minecraft:jigsaw",components:{"minecraft:custom_data":{raw_titanium:1b}}},{Slot:0b,id:"minecraft:amethyst_shard"}]} run loot replace entity @s weapon.mainhand loot expansion:items/materials/amethonium_ingot

# code to copy the output item into an armor slot for later reference
data modify entity @s ArmorItems[0] set from entity @s HandItems[0]
data remove entity @s HandItems[0]