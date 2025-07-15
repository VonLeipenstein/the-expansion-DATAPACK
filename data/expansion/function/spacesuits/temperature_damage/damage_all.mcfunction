# only add damage value to expansion armor
execute if predicate expansion:armor/head run scoreboard players operation #helmet exp.damage += #temp exp.damage
execute if predicate expansion:armor/chest run scoreboard players operation #chestpiece exp.damage += #temp exp.damage
execute if predicate expansion:armor/legs run scoreboard players operation #leggings exp.damage += #temp exp.damage
execute if predicate expansion:armor/feet run scoreboard players operation #boots exp.damage += #temp exp.damage