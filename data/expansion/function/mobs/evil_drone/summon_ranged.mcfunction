summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["exp.evil_drone","exp.new_drone","exp.ranged_drone","exp.mob"],equipment:{head:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:item_model":"expansion:mobs/evil_drone"}}},CustomName:"Emergency Drone"}

# randomly summon a drone that can leave the nest
execute if predicate expansion:chance/005_chance run tag @e[type=armor_stand,tag=exp.evil_drone,distance=..0.1,limit=1,sort=nearest] add exp.rogue_drone

# kill the drone home if it has spawned too many drones
scoreboard players add @s exp.counter_1 1
execute if score @s exp.counter_1 matches 20.. run tag @s add exp.reached_spawn_cap