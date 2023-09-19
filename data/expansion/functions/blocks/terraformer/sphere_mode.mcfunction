execute if score @s exp.counter_2 matches 1 run function expansion:blocks/terraformer/particles/terraformer_sphere_particle

tag @e[type=minecraft:armor_stand,tag=exp.compressor,tag=!exp.has_oxygen,distance=..40] add exp.has_oxygen
tag @e[type=#expansion:sentient,tag=!exp.has_oxygen,distance=..40] add exp.has_oxygen