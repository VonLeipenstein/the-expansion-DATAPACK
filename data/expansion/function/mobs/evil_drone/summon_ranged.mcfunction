summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["exp.evil_drone","exp.ranged_drone","exp.mob"],Passengers:[{id:"minecraft:vex",Silent:1b,DeathLootTable:"minecraft:empty",NoAI:1b,AbsorptionAmount:20f,Health:20f,Tags:["exp.evil_drone_hitbox"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.max_health",base:20}]}],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":1012410}}],CustomName:'"Emergency Drone"'}
execute if predicate expansion:chance/005_chance run tag @e[type=armor_stand,tag=exp.evil_drone,distance=..0.1,limit=1,sort=nearest] add exp.rogue_drone

# kill the drone home if it has spawned too many drones
scoreboard players add @s exp.counter_1 1
execute if score @s exp.counter_1 matches 20.. run tag @s add exp.reached_spawn_cap