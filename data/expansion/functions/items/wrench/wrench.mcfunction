# demount vehicles
execute if predicate expansion:utility/sneak anchored eyes positioned ^ ^ ^2.5 as @e[type=armor_stand,distance=..2.5,limit=1,sort=nearest] at @s run function expansion:items/wrench/demount
execute unless predicate expansion:utility/sneak anchored eyes positioned ^ ^ ^2.5 as @e[type=armor_stand,distance=..2.5,limit=1,sort=nearest] at @s run function expansion:items/wrench/recycle

