# only add damage value to expansion armor
execute if predicate expansion:armor/head run scoreboard players operation #head exp.damage += #temp exp.damage
execute if predicate expansion:armor/chest run scoreboard players operation #chest exp.damage += #temp exp.damage
execute if predicate expansion:armor/legs run scoreboard players operation #legs exp.damage += #temp exp.damage
execute if predicate expansion:armor/feet run scoreboard players operation #feet exp.damage += #temp exp.damage