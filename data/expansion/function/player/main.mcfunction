## Oxygen System:
# The player has an internal oxygen reserve which constantly depletes
# The suits oxygen tanks replenish the reserve from their own
# Oxygenator, Terraformer, Vehicles and Planets with oxygen grant an unlimited supply
# The player only suffocates if its personal reserve runs out (which is seperate from the tanks)

# add a tag to be able to target the player who is currently running this function from any context
tag @s add exp.tick_player

## Death
execute if score @s exp.death matches 1.. run function expansion:player/death
execute if score @s exp.death matches ..-1 run return run scoreboard players add @s exp.death 1

## Unique ID
execute unless score @s exp.unique_id matches 1.. run function expansion:player/assign_id
scoreboard players operation #search exp.unique_id = @s exp.unique_id

## Rightclick
execute if score @s exp.rightclick matches 1.. if predicate expansion:nbt_checks/selected_item/expansion_coas run function expansion:player/rightclick/main

## Gravity
execute if predicate expansion:periodic/5 run function expansion:mechanics/gravity/main
execute if score @s exp.gravity_id = #zero exp.gravity_id run function expansion:mechanics/gravity/zero/main

## Oxygen
function expansion:mechanics/oxygen/main

## Spacesuits
execute if function expansion:spacesuits/unequip/check_tags run function expansion:spacesuits/unequip/main
execute if predicate expansion:armor/any run function expansion:spacesuits/main

## Temperature
execute if predicate expansion:periodic/10 run function expansion:mechanics/temperature/set_biome_temp/main

## Vehicles
execute if entity @s[tag=exp.inside_vehicle] run function expansion:vehicles/main

## Space Planet Detection
execute if predicate expansion:dimension/space unless entity @s[gamemode=spectator] run function expansion:solar_system/transitions/planet_detection

## Pocket Space
execute if entity @s[tag=exp.check_loaded] run function expansion:items/transporter/transport/check_loaded
execute if predicate expansion:dimension/storage run function expansion:items/transporter/storage_tick

## Scores
function expansion:player/decrement_scores

## stinky section
# delete gui items
execute if items entity @s container.* *[custom_data~{gui_item:1b}] run clear @s minecraft:jigsaw[custom_data~{gui_item:1b}]
# remove water when mining ores
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{expansion_ore:1b}}}},distance=..10,limit=5] at @s run function expansion:blocks/ores/fix_water
# kill gui items
execute if predicate expansion:periodic/5 run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{gui_item:1b}}}},distance=..20,limit=10,sort=arbitrary]
# craft fabricator
execute if predicate expansion:periodic/5 at @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{exp_item:{name:"steel_ingot"}}},count:15}},distance=..10,limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond",count:2}},distance=..1.5,limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",count:5}},distance=..1.5,limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:crafting_table",count:1}},distance=..1.5,limit=1,sort=arbitrary] run function expansion:blocks/fabricator/create

# reset armor
data remove storage expansion:temp player

# remove ticking tag
tag @s remove exp.tick_player