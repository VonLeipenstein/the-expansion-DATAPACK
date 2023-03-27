# copy the data to the respective storage depending on the dimension, its a bit dirty but can't be bothered
execute if predicate expansion:dimension/overworld run data modify entity @s ArmorItems[3].tag.ReturnPos.earth set from entity @s Pos
execute if predicate expansion:dimension/moon run data modify entity @s ArmorItems[3].tag.ReturnPos.moon set from entity @s Pos
execute if predicate expansion:dimension/mars run data modify entity @s ArmorItems[3].tag.ReturnPos.mars set from entity @s Pos
execute if predicate expansion:dimension/venus run data modify entity @s ArmorItems[3].tag.ReturnPos.venus set from entity @s Pos
#execute if predicate expansion:dimension/mercury run data modify entity @s ArmorItems[3].tag.ReturnPos.mercury set from entity @s Pos
execute if predicate expansion:dimension/jupiter run data modify entity @s ArmorItems[3].tag.ReturnPos.jupiter set from entity @s Pos
execute if predicate expansion:dimension/europa run data modify entity @s ArmorItems[3].tag.ReturnPos.europa set from entity @s Pos
execute if predicate expansion:dimension/asteroids run data modify entity @s ArmorItems[3].tag.ReturnPos.asteroids set from entity @s Pos