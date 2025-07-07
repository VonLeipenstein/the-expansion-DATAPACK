loot replace entity @s container.0 loot expansion:items/gui/filler
data merge entity @s {transformation:{scale:[0.0f,0.0f,0.0f]}}

## CRAFTING ITEMS
# steel plate
execute if function expansion:utilities/recipe_predicates/steel_plate run return run loot replace entity @s container.0 loot expansion:items/steel_plate
# amethonium plate
execute if function expansion:utilities/recipe_predicates/amethonium_plate run return run loot replace entity @s container.0 loot expansion:items/amethonium_plate
# processing unit
execute if function expansion:utilities/recipe_predicates/processing_unit run return run loot replace entity @s container.0 loot expansion:items/processing_unit
# wrench
execute if function expansion:utilities/recipe_predicates/wrench run return run loot replace entity @s container.0 loot expansion:tools/wrench
# buggy wheel
execute if function expansion:utilities/recipe_predicates/buggy_wheel run return run loot replace entity @s container.0 loot expansion:items/buggy_wheel
# copper wire
execute if function expansion:utilities/recipe_predicates/copper_wire run return run loot replace entity @s container.0 loot expansion:items/copper_wire
# electromagnet
execute if function expansion:utilities/recipe_predicates/electromagnet run return run loot replace entity @s container.0 loot expansion:items/electromagnet
# fan
execute if function expansion:utilities/recipe_predicates/fan run return run loot replace entity @s container.0 loot expansion:items/fan
# gear
execute if function expansion:utilities/recipe_predicates/gear run return run loot replace entity @s container.0 loot expansion:items/gear
# simple mechanism
execute if function expansion:utilities/recipe_predicates/simple_mechanism run return run loot replace entity @s container.0 loot expansion:items/simple_mechanism
# complex mechanism
execute if function expansion:utilities/recipe_predicates/complex_mechanism run return run loot replace entity @s container.0 loot expansion:items/complex_mechanism
# thruster
execute if function expansion:utilities/recipe_predicates/thruster run return run loot replace entity @s container.0 loot expansion:items/thruster
# circuit board
execute if function expansion:utilities/recipe_predicates/circuit_board run return run loot replace entity @s container.0 loot expansion:items/circuit_board
# cooling disk
execute if function expansion:utilities/recipe_predicates/cooling_element run return run loot replace entity @s container.0 loot expansion:items/cooling_element
# heating disk
execute if function expansion:utilities/recipe_predicates/warming_element run return run loot replace entity @s container.0 loot expansion:items/warming_element
# oxygen filter
execute if function expansion:utilities/recipe_predicates/oxygen_filter run return run loot replace entity @s container.0 loot expansion:items/oxygen_filter
# electromotor
execute if function expansion:utilities/recipe_predicates/electromotor run return run loot replace entity @s container.0 loot expansion:items/elektromotor
# robot arm
execute if function expansion:utilities/recipe_predicates/robot_arm run return run loot replace entity @s container.0 loot expansion:items/robot_arm
# monochrome monitor
execute if function expansion:utilities/recipe_predicates/monochrome_monitor run return run loot replace entity @s container.0 loot expansion:items/monochrome_monitor

## BLOCKS
# assembler
execute if function expansion:utilities/recipe_predicates/assembler run return run loot replace entity @s container.0 loot expansion:blocks/assembler
# compressor
execute if function expansion:utilities/recipe_predicates/compressor run return run loot replace entity @s container.0 loot expansion:blocks/compressor
# enhancer
execute if function expansion:utilities/recipe_predicates/enhancer run return run loot replace entity @s container.0 loot expansion:blocks/enhancer
# arc furnace
execute if function expansion:utilities/recipe_predicates/arc_furnace run return run loot replace entity @s container.0 loot expansion:blocks/arc_furnace
# terraformer
execute if function expansion:utilities/recipe_predicates/terraformer run return run loot replace entity @s container.0 loot expansion:blocks/terraformer
# oxygenator
execute if function expansion:utilities/recipe_predicates/oxygenator run return run loot replace entity @s container.0 loot expansion:blocks/oxygenator
# planetarium
execute if function expansion:utilities/recipe_predicates/planetarium run return run loot replace entity @s container.0 loot expansion:blocks/planetarium
# fabricator
execute if function expansion:utilities/recipe_predicates/fabricator run return run loot replace entity @s container.0 loot expansion:blocks/fabricator
# extractor
execute if function expansion:utilities/recipe_predicates/extractor run return run loot replace entity @s container.0 loot expansion:blocks/lacrymae_extractor
# tesla coil
execute if function expansion:utilities/recipe_predicates/tesla_coil run return run loot replace entity @s container.0 loot expansion:blocks/tesla_coil
# modstation
execute if function expansion:utilities/recipe_predicates/modstation run return run loot replace entity @s container.0 loot expansion:blocks/modstation

## VEHICLES
# rocket top
execute if function expansion:utilities/recipe_predicates/rocket_top run return run loot replace entity @s container.0 loot expansion:items/rocket_top
# rocket cockpit
execute if function expansion:utilities/recipe_predicates/rocket_cockpit run return run loot replace entity @s container.0 loot expansion:items/rocket_cockpit
# rocket bottom
execute if function expansion:utilities/recipe_predicates/rocket_bottom run return run loot replace entity @s container.0 loot expansion:items/rocket_bottom

# spaceship left wing
execute if function expansion:utilities/recipe_predicates/spaceship_left_wing run return run loot replace entity @s container.0 loot expansion:items/spaceship_left_wing
# spaceship right wing
execute if function expansion:utilities/recipe_predicates/spaceship_right_wing run return run loot replace entity @s container.0 loot expansion:items/spaceship_right_wing
# spaceship cockpit
execute if function expansion:utilities/recipe_predicates/spaceship_cockpit run return run loot replace entity @s container.0 loot expansion:items/spaceship_cockpit
# spaceship engines
execute if function expansion:utilities/recipe_predicates/spaceship_engines run return run function expansion:items/fuel_cell/craft_spaceship_engines
# spaceship nose
execute if function expansion:utilities/recipe_predicates/spaceship_nose run return run loot replace entity @s container.0 loot expansion:items/spaceship_nose

## MODULES
# speed mod mk1
execute if function expansion:utilities/recipe_predicates/speed_mod_1 run return run loot replace entity @s container.0 loot expansion:items/modules/vehicle_speed/mk1
# fuel mod mk1
execute if function expansion:utilities/recipe_predicates/fuel_mod_1 run return run loot replace entity @s container.0 loot expansion:items/modules/vehicle_fuel/mk1
# coldresist mk1
execute if function expansion:utilities/recipe_predicates/coldresist_1 run return run loot replace entity @s container.0 loot expansion:items/modules/cold_resist/mk1/regular
# coldresist mk2
execute if function expansion:utilities/recipe_predicates/coldresist_2 run return run function expansion:blocks/fabricator/upgrade_module/cold_resist
# heatresist mk1
execute if function expansion:utilities/recipe_predicates/heatresist_1 run return run loot replace entity @s container.0 loot expansion:items/modules/heat_resist/mk1/regular
# heatresist mk2
execute if function expansion:utilities/recipe_predicates/heatresist_2 run return run function expansion:blocks/fabricator/upgrade_module/heat_resist
# durability mk1
execute if function expansion:utilities/recipe_predicates/durability_1 run return run loot replace entity @s container.0 loot expansion:items/modules/durability/mk1/regular
# durability mk2
execute if function expansion:utilities/recipe_predicates/durability_2 run return run function expansion:blocks/fabricator/upgrade_module/durability
# rocket module
execute if function expansion:utilities/recipe_predicates/rocket_mod run return run loot replace entity @s container.0 loot expansion:items/modules/rocket
# magnetic module
execute if function expansion:utilities/recipe_predicates/magnetic_mod run return run loot replace entity @s container.0 loot expansion:items/modules/magnetic

## TOOLS
# oxygen tank
execute if function expansion:utilities/recipe_predicates/oxygen_tank_mk1 run return run loot replace entity @s container.0 loot expansion:tools/oxygen_tanks/tier1/empty
execute if function expansion:utilities/recipe_predicates/oxygen_tank_mk2 run return run function expansion:items/oxygen_tank/copy_to_tank
# fuel cell
execute if function expansion:utilities/recipe_predicates/fuel_cell_mk1 run return run loot replace entity @s container.0 loot expansion:tools/fuel_cell/tier1/empty
execute if function expansion:utilities/recipe_predicates/fuel_cell_mk2 run return run function expansion:items/fuel_cell/craft_mk2
# repair kit
execute if function expansion:utilities/recipe_predicates/repair_kit run return run loot replace entity @s container.0 loot expansion:tools/repair_kit
# thermometer
execute if function expansion:utilities/recipe_predicates/thermometer run return run loot replace entity @s container.0 loot expansion:tools/thermometer

## ARMOR
# diver
execute if function expansion:utilities/recipe_predicates/diver_helmet run return run loot replace entity @s container.0 loot expansion:armor/diver/helmet
execute if function expansion:utilities/recipe_predicates/diver_chestplate run return run function expansion:items/oxygen_tank/copy_to_chestplate
execute if function expansion:utilities/recipe_predicates/diver_leggings run return run loot replace entity @s container.0 loot expansion:armor/diver/leggings
execute if function expansion:utilities/recipe_predicates/diver_boots run return run loot replace entity @s container.0 loot expansion:armor/diver/boots
# nasa
execute if function expansion:utilities/recipe_predicates/nasa_helmet run return run loot replace entity @s container.0 loot expansion:armor/nasa/helmet
execute if function expansion:utilities/recipe_predicates/nasa_chestplate run return run loot replace entity @s container.0 loot expansion:armor/nasa/chestplate
execute if function expansion:utilities/recipe_predicates/nasa_leggings run return run loot replace entity @s container.0 loot expansion:armor/nasa/leggings
execute if function expansion:utilities/recipe_predicates/nasa_boots run return run loot replace entity @s container.0 loot expansion:armor/nasa/boots