execute if predicate expansion:dimension/the_end run data modify entity @s ArmorItems[0].tag.return_dim set value -2
execute if predicate expansion:dimension/the_nether run data modify entity @s ArmorItems[0].tag.return_dim set value -1
execute if predicate expansion:dimension/overworld run data modify entity @s ArmorItems[0].tag.return_dim set value 0
execute if predicate expansion:dimension/moon run data modify entity @s ArmorItems[0].tag.return_dim set value 1
execute if predicate expansion:dimension/mars run data modify entity @s ArmorItems[0].tag.return_dim set value 2
execute if predicate expansion:dimension/venus run data modify entity @s ArmorItems[0].tag.return_dim set value 3
execute if predicate expansion:dimension/mercury run data modify entity @s ArmorItems[0].tag.return_dim set value 4
execute if predicate expansion:dimension/jupiter run data modify entity @s ArmorItems[0].tag.return_dim set value 5
execute if predicate expansion:dimension/europa run data modify entity @s ArmorItems[0].tag.return_dim set value 6
execute if predicate expansion:dimension/space run data modify entity @s ArmorItems[0].tag.return_dim set value 7
execute if predicate expansion:dimension/asteroids run data modify entity @s ArmorItems[0].tag.return_dim set value 8

data modify entity @s ArmorItems[0].tag.return_pos set from entity @s Pos