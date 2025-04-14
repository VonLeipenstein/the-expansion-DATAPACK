# copy the data to the respective storage depending on the dimension, its a bit dirty but can't be bothered
execute if predicate expansion:dimension/overworld run return run data modify entity @s data.ReturnPos.earth set from entity @s Pos
execute if predicate expansion:dimension/moon run return run data modify entity @s data.ReturnPos.moon set from entity @s Pos
execute if predicate expansion:dimension/mars run return run data modify entity @s data.ReturnPos.mars set from entity @s Pos
execute if predicate expansion:dimension/venus run return run data modify entity @s data.ReturnPos.venus set from entity @s Pos
execute if predicate expansion:dimension/jupiter run return run data modify entity @s data.ReturnPos.jupiter set from entity @s Pos
execute if predicate expansion:dimension/europa run return run data modify entity @s data.ReturnPos.europa set from entity @s Pos
execute if predicate expansion:dimension/asteroids run return run data modify entity @s data.ReturnPos.asteroids set from entity @s Pos