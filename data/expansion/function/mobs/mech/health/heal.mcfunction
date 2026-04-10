# >>> generated function callers >>>
# Callers for expansion:mobs/mech/health/heal
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:mobs/mech/bots/hover_around (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# speed up the switch for each bot
scoreboard players remove @s exp.counter_2 1

# heal the mech for 1% of its max health
scoreboard players operation #temp exp.health = @s exp.max_health
scoreboard players operation #temp exp.health /= #100 exp.const
scoreboard players operation @s exp.health += #temp exp.health

# don't exceed max health
execute if score @s exp.health > @s exp.max_health run scoreboard players operation @s exp.health = @s exp.max_health

# reset scores
scoreboard players reset #temp exp.health