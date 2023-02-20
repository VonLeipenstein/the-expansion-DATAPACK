# buggy
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{buggy_wheel:1b},Count:1b},{Slot:2b,id:"minecraft:jigsaw",tag:{steel_plate:1b},Count:1b},{Slot:3b,id:"minecraft:jigsaw",tag:{steel_plate:1b},Count:1b},{Slot:4b,id:"minecraft:jigsaw",tag:{buggy_wheel:1b},Count:1b},{Slot:10b,id:"minecraft:jigsaw",tag:{elektromotor:1b},Count:1b},{Slot:11b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b},Count:1b},{Slot:12b,id:"minecraft:jigsaw",tag:{circuit_board:1b},Count:1b},{Slot:13b,id:"minecraft:jigsaw",tag:{elektromotor:1b},Count:1b},{Slot:19b,id:"minecraft:jigsaw",tag:{buggy_wheel:1b},Count:1b},{Slot:20b,id:"minecraft:jigsaw",tag:{steel_plate:1b},Count:1b},{Slot:21b,id:"minecraft:jigsaw",tag:{steel_plate:1b},Count:1b},{Slot:22b,id:"minecraft:jigsaw",tag:{buggy_wheel:1b},Count:1b}]} run loot replace entity @s weapon.mainhand loot expansion:vehicles/buggy
# spaceship
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:jigsaw",tag:{spaceship_left_wing:1b},Count:1b},{Slot:11b,id:"minecraft:jigsaw",tag:{spaceship_engines:1b},Count:1b},{Slot:12b,id:"minecraft:jigsaw",tag:{spaceship_cockpit:1b},Count:1b},{Slot:20b,id:"minecraft:jigsaw",tag:{spaceship_right_wing:1b},Count:1b},]} run loot replace entity @s weapon.mainhand loot expansion:vehicles/spaceship
# railgun
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b},Count:1b},{Slot:2b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b},Count:1b},{Slot:3b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},{Slot:4b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},{Slot:10b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b},Count:1b},{Slot:11b,id:"minecraft:jigsaw",tag:{electromagnet:1b},Count:1b},{Slot:12b,id:"minecraft:jigsaw",tag:{electromagnet:1b},Count:1b},{Slot:13b,id:"minecraft:jigsaw",tag:{electromagnet:1b},Count:1b},{Slot:19b,id:"minecraft:jigsaw",tag:{circuit_board:1b},Count:1b},{Slot:20b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b},Count:1b},{Slot:21b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},{Slot:22b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b}]} run loot replace entity @s weapon.mainhand loot expansion:weapons/railgun
# cryoblaster
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b},Count:1b},{Slot:2b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},{Slot:10b,id:"minecraft:jigsaw",tag:{circuit_board:1b},Count:1b},{Slot:11b,id:"minecraft:jigsaw",tag:{cooling_element:1b},Count:1b},{Slot:12b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},{Slot:13b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},{Slot:19b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b},Count:1b},{Slot:20b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},]} run loot replace entity @s weapon.mainhand loot expansion:tools/cryoblaster

# apply spaceship skins
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b,tag:{spaceship_skin:1b}},{Slot:16b,tag:{exp_spaceship:1b}}]} run function expansion:contraptions/assembler/apply_skin

# code to copy the output item into an armor slot for later reference
data modify entity @s ArmorItems[0] set from entity @s HandItems[0]
data remove entity @s HandItems[0]

# handy template
#execute if block ~ ~ ~ minecraft:barrel{Items:[
#{Slot:1b,id:"minecraft:jigsaw",tag:{amethonium_plate:1b},Count:1b},
#{Slot:2b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},
#{Slot:3b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},
#{Slot:4b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},

#{Slot:10b,id:"minecraft:jigsaw",tag:{circuit_board:1b},Count:1b},
#{Slot:11b,id:"minecraft:jigsaw",tag:{cooling_element:1b},Count:1b},
#{Slot:12b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},
#{Slot:13b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},

#{Slot:19b,id:"minecraft:jigsaw",tag:{complex_mechanism:1b},Count:1b},
#{Slot:20b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},
#{Slot:21b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b},
#{Slot:22b,id:"minecraft:jigsaw",tag:{amethonium_ingot:1b},Count:1b}
#]} run loot replace entity @s weapon.mainhand loot expansion:weapons/railgun