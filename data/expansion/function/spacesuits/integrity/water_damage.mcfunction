scoreboard players set #temp exp.damage 10

execute if predicate expansion:armor/head unless predicate expansion:armor/diver/head run scoreboard players operation #head exp.damage += #temp exp.damage
execute if predicate expansion:armor/chest unless predicate expansion:armor/diver/chest run scoreboard players operation #chest exp.damage += #temp exp.damage
execute if predicate expansion:armor/legs unless predicate expansion:armor/diver/legs run scoreboard players operation #legs exp.damage += #temp exp.damage
execute if predicate expansion:armor/feet unless predicate expansion:armor/diver/feet run scoreboard players operation #feet exp.damage += #temp exp.damage