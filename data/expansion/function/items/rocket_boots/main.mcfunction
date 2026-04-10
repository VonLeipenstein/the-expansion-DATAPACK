# >>> generated function callers >>>
# Callers for expansion:items/rocket_boots/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:spacesuits/main (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

# apply a tag to start flying
scoreboard players add @s[predicate=expansion:input/jump,tag=!exp.flying_boots] exp.rboots_warmup 1
scoreboard players reset @s[predicate=!expansion:input/jump] exp.rboots_warmup
execute if score @s exp.rboots_warmup matches 8.. run function expansion:items/rocket_boots/delay

# test some conditions and fly
execute if entity @s[tag=exp.flying_boots] run function expansion:items/rocket_boots/try_flight

# recharge the boots when on the ground
execute unless block ~ ~-0.1 ~ #expansion:air run function expansion:items/rocket_boots/on_ground

# turn off the boots
execute if entity @s[predicate=!expansion:input/jump,tag=exp.boosting] run function expansion:items/rocket_boots/turn_off