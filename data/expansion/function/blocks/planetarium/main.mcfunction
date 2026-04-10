# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute unless block ~ ~ ~ minecraft:cobblestone run function expansion:blocks/planetarium/destroy/init

# iteratively determine the position of all the planets
execute if predicate expansion:periodic/20 at @s positioned ~ ~1.9 ~ on passengers if entity @s[tag=exp.planetarium_pivot] run function expansion:blocks/planetarium/spin/pivots

# particles
particle end_rod ~ ~3 ~ 5 5 5 0 1 normal