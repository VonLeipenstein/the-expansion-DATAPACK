execute if entity @e[type=minecraft:armor_stand,tag=exp.active_coil,distance=0.9..10,limit=1] run function expansion:blocks/tesla_coil/coil/target_entity

execute unless entity @s[tag=exp.has_zapped] if entity @e[type=#expansion:turret_target,distance=0.9..10,limit=1] run function expansion:blocks/tesla_coil/coil/target_entity

# idle particle
particle minecraft:electric_spark ~ ~1.9 ~ 0.3 0.1 0.3 0 1 force

tag @s remove exp.has_zapped
