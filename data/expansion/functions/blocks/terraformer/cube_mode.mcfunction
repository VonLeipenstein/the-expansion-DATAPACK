execute if score @s exp.counter_2 matches 1 run function expansion:blocks/terraformer/particles/terraformer_cube_particle
execute positioned ~-24 ~-24 ~-24 run tag @e[type=minecraft:armor_stand,tag=exp.compressor,tag=!exp.has_oxygen,dx=47,dy=47,dz=47] add exp.has_oxygen
execute positioned ~-24 ~-24 ~-24 run tag @e[type=#expansion:sentient,tag=!exp.has_oxygen,dx=47,dy=47,dz=47] add exp.has_oxygen


