tag @s[predicate=expansion:utility/sneak,scores={expansion.jump=1}] add exp.flying_boots
execute if block ~ ~-0.1 ~ #expansion:expansion_air run tag @s[predicate=expansion:utility/sneak,tag=!exp.flying_boots] add exp.flying_boots

execute if entity @s[tag=exp.flying_boots] run function expansion:items/rocket_boots/try_flight

execute unless block ~ ~-0.1 ~ #expansion:expansion_air run tag @s[tag=exp.flying_boots] remove exp.flying_boots

scoreboard players remove @s[scores={exp.rboots_cooldown=1..}] exp.rboots_cooldown 1

execute if entity @s[predicate=!expansion:utility/sneak,tag=exp.boosting] run function expansion:items/rocket_boots/turn_off



