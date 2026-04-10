# >>> generated function callers >>>
# Callers for expansion:vehicles/buggy/hit_mob
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/buggy/propulsion/drive (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

data merge entity @s[type=!player] {Motion:[0.0,1.0,0.0]}
effect give @s[type=player,tag=!exp.inside_vehicle] minecraft:levitation 1 7 true
advancement grant @p[tag=exp.inside_buggy] only expansion:progression/buggy_hit