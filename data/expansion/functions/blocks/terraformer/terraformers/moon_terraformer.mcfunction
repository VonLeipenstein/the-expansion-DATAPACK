execute at @s[scores={exp.timer_1=10..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["exp.terraformer"]}
execute at @s[scores={exp.counter_1=0}] run spreadplayers ~ ~ 0 40 false @e[type=area_effect_cloud,tag=exp.terraformer,limit=1,sort=nearest]
execute at @s[scores={exp.counter_1=1}] run spreadplayers ~ ~ 0 24 false @e[type=area_effect_cloud,tag=exp.terraformer,limit=1,sort=nearest]
execute at @s[scores={exp.counter_1=0}] run kill @e[type=area_effect_cloud,tag=exp.terraformer,distance=40..,limit=1,sort=nearest]
execute at @e[type=area_effect_cloud,tag=exp.terraformer,limit=1,sort=nearest] if predicate expansion:light/8_15_light run function expansion:blocks/terraformer/terraformers/moon_plant_placer
