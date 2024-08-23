# copy the data to the respective storage depending on the dimension, its a bit dirty but can't be bothered
execute if predicate expansion:dimension/overworld run data modify entity @s ArmorItems[3].components.minecraft:custom_data.ReturnPos.earth set from entity @s Pos
execute if predicate expansion:dimension/moon run data modify entity @s ArmorItems[3].components.minecraft:custom_data.ReturnPos.moon set from entity @s Pos
execute if predicate expansion:dimension/mars run data modify entity @s ArmorItems[3].components.minecraft:custom_data.ReturnPos.mars set from entity @s Pos
execute if predicate expansion:dimension/venus run data modify entity @s ArmorItems[3].components.minecraft:custom_data.ReturnPos.venus set from entity @s Pos
#execute if predicate expansion:dimension/mercury run data modify entity @s ArmorItems[3].components.minecraft:custom_data.ReturnPos.mercury set from entity @s Pos
execute if predicate expansion:dimension/jupiter run data modify entity @s ArmorItems[3].components.minecraft:custom_data.ReturnPos.jupiter set from entity @s Pos
execute if predicate expansion:dimension/europa run data modify entity @s ArmorItems[3].components.minecraft:custom_data.ReturnPos.europa set from entity @s Pos
execute if predicate expansion:dimension/asteroids run data modify entity @s ArmorItems[3].components.minecraft:custom_data.ReturnPos.asteroids set from entity @s Pos