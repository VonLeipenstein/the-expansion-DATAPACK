execute if predicate expansion:chance/005_chance run particle end_rod ~0.2 ~1 ~ ~ ~1000000 ~ 0.00000011 0
execute if predicate expansion:chance/005_chance run particle end_rod ~-0.2 ~1 ~ ~ ~1000000 ~ 0.00000012 0
execute if predicate expansion:chance/005_chance run particle end_rod ~ ~1 ~0.2 ~ ~1000000 ~ 0.00000013 0
execute if predicate expansion:chance/005_chance run particle end_rod ~ ~1 ~-0.2 ~ ~1000000 ~ 0.00000014 0
execute if predicate expansion:chance/005_chance run particle end_rod ~ ~1 ~ ~ ~1000000 ~ 0.00000015 0

execute if predicate expansion:chance/005_chance if entity @s[tag=exp.pressurized] run particle end_rod ^-1.5 ^0.5 ^-0.2 ^1000000 ^ ^ 0.00000011 0
execute if predicate expansion:chance/005_chance if entity @s[tag=exp.pressurized] run particle end_rod ^-1.5 ^0.5 ^0.2 ^1000000 ^ ^ 0.00000011 0
execute if predicate expansion:chance/005_chance if entity @s[tag=exp.pressurized] run particle end_rod ^-1.5 ^0.7 ^-0.2 ^1000000 ^ ^ 0.00000011 0
execute if predicate expansion:chance/005_chance if entity @s[tag=exp.pressurized] run particle end_rod ^-1.5 ^0.7 ^0.2 ^1000000 ^ ^ 0.00000011 0
