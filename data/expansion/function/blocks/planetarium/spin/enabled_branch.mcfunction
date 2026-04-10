# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/spin/enabled_branch
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/planetarium/spin/displays (1 caller) [OK same-folder]
# <<< generated function callers <<<

# prepare the distance for the planets down this pivot
execute unless entity @s[tag=exp.root_display] run scoreboard players operation #temp exp.distance = @s exp.distance
execute if entity @s[tag=exp.root_display] run scoreboard players set #temp exp.distance 0
scoreboard players operation #temp exp.distance *= @s exp.distance_mod
scoreboard players operation #temp exp.distance /= #100 exp.const

execute unless entity @s[tag=exp.root_display] run scoreboard players operation #temp exp.offset = @s exp.offset
execute if entity @s[tag=exp.root_display] run scoreboard players set #temp exp.offset 0
scoreboard players operation #temp exp.offset *= @s exp.offset_mod
scoreboard players operation #temp exp.offset /= #100 exp.const

# position the planet at the found distance
execute unless entity @s[tag=exp.planetarium_freemove] run function expansion:blocks/planetarium/spin/set_display_distance
execute unless entity @s[tag=exp.planetarium_freemove] positioned as @s run function expansion:blocks/planetarium/spin/set_display_offset

# rotation
execute rotated as @s[tag=exp.root_display] run rotate @s ~-12 ~
execute rotated as @s[tag=exp.mini_earth,tag=!exp.root_display] run rotate @s ~-100 ~
execute rotated as @s[tag=exp.mini_moon,tag=!exp.root_display] run rotate @s ~-13.4 ~
execute rotated as @s[tag=exp.mini_mars,tag=!exp.root_display] run rotate @s ~-162 ~
execute rotated as @s[tag=exp.mini_venus,tag=!exp.root_display] run rotate @s ~4 ~
execute rotated as @s[tag=exp.mini_jupiter,tag=!exp.root_display] run rotate @s ~-244 ~
execute rotated as @s[tag=exp.mini_europa,tag=!exp.root_display] run rotate @s ~22.8 ~
#execute if entity @s[tag=exp.planetarium_freemove,tag=!exp.root_display] run function expansion:blocks/planetarium/spin/comets

# reset the node to its previous state
execute if entity @s[tag=exp.disabled_node,tag=!exp.root_display] run function expansion:blocks/planetarium/enable_node