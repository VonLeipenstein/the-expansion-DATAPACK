summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["exp.lightning"]}
spreadplayers ~ ~ 25 200 false @e[type=area_effect_cloud,tag=exp.lightning,limit=1,sort=nearest]
execute at @e[type=area_effect_cloud,tag=exp.lightning,limit=1,sort=nearest] run summon minecraft:lightning_bolt ~ ~ ~
