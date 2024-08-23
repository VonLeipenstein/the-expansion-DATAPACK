execute if entity @s[y_rotation=-135.1..-45] run summon minecraft:wandering_trader ^ ^ ^ {Silent:1b,NoAI:0b,Invulnerable:1b,Rotation:[90f,0f],wander_target:[I;0,0,0],Tags:["exp.mech","exp.new_vehicle","exp.vehicle","exp.mob","exp.mech_mob","exp.moddable_vehicle","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_model_data":124401}}],Passengers:[{id:"minecraft:armor_stand",Marker:1b,Tags:["exp.AI_resetter"],Passengers:[{id:"minecraft:cat",Tags:["exp.mech_seat"],NoAI:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}]}]},{id:"minecraft:interaction",Tags:["exp.mech_rcdet","exp.hitbox","smithed.block"],width:2,height:2f,response:0b}],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1,show_particles:0b}]}
execute if entity @s[y_rotation=45.1..135] run summon minecraft:wandering_trader ^ ^ ^ {Silent:1b,NoAI:0b,Invulnerable:1b,Rotation:[270f,0f],wander_target:[I;0,0,0],Tags:["exp.mech","exp.new_vehicle","exp.vehicle","exp.mob","exp.mech_mob","exp.moddable_vehicle","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_model_data":124401}}],Passengers:[{id:"minecraft:armor_stand",Marker:1b,Tags:["exp.AI_resetter"],Passengers:[{id:"minecraft:cat",Tags:["exp.mech_seat"],NoAI:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}]}]},{id:"minecraft:interaction",Tags:["exp.mech_rcdet","exp.hitbox","smithed.block"],width:2,height:2f,response:0b}],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1,show_particles:0b}]}
execute if entity @s[y_rotation=-45..45] run summon minecraft:wandering_trader ^ ^ ^ {Silent:1b,NoAI:0b,Invulnerable:1b,Rotation:[180f,0f],wander_target:[I;0,0,0],Tags:["exp.mech","exp.new_vehicle","exp.vehicle","exp.mob","exp.mech_mob","exp.moddable_vehicle","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_model_data":124401}}],Passengers:[{id:"minecraft:armor_stand",Marker:1b,Tags:["exp.AI_resetter"],Passengers:[{id:"minecraft:cat",Tags:["exp.mech_seat"],NoAI:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}]}]},{id:"minecraft:interaction",Tags:["exp.mech_rcdet","exp.hitbox","smithed.block"],width:2,height:2f,response:0b}],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1,show_particles:0b}]}
execute if entity @s[y_rotation=135.1..-135] run summon minecraft:wandering_trader ^ ^ ^ {Silent:1b,NoAI:0b,Invulnerable:1b,Rotation:[0f,0f],wander_target:[I;0,0,0],Tags:["exp.mech","exp.new_vehicle","exp.vehicle","exp.mob","exp.mech_mob","exp.moddable_vehicle","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_model_data":124401}}],Passengers:[{id:"minecraft:armor_stand",Marker:1b,Tags:["exp.AI_resetter"],Passengers:[{id:"minecraft:cat",Tags:["exp.mech_seat"],NoAI:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}]}]},{id:"minecraft:interaction",Tags:["exp.mech_rcdet","exp.hitbox","smithed.block"],width:2,height:2f,response:0b}],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1,show_particles:0b}]}

# summon the animated java rigs
execute positioned ~ ~1.48 ~ rotated as @e[type=wandering_trader,tag=exp.mech,limit=1,sort=nearest] run function animated_java:mech_legs/summon/default
execute positioned ~ ~1.48 ~ rotated as @e[type=wandering_trader,tag=exp.mech,limit=1,sort=nearest] run function animated_java:mech_torso/summon/default

# mount the animated java rigs to the entity stack
ride @e[type=item_display,tag=aj.mech_legs.root,limit=1,sort=nearest] mount @e[type=wandering_trader,tag=exp.mech,limit=1,sort=nearest]
ride @e[type=item_display,tag=aj.mech_torso.root,limit=1,sort=nearest] mount @e[type=wandering_trader,tag=exp.mech,limit=1,sort=nearest]

# bossbar
scoreboard players set @e[type=wandering_trader,tag=exp.mech,limit=1,sort=nearest] exp.health 50
bossbar add exp.mech "Haywired Mecha"
execute store result bossbar exp.mech value run scoreboard players get @e[type=wandering_trader,tag=exp.mech,limit=1,sort=nearest] exp.health
execute store result bossbar exp.mech max run scoreboard players get @e[type=wandering_trader,tag=exp.mech,limit=1,sort=nearest] exp.health
bossbar set exp.mech visible true
bossbar set exp.mech players @a[distance=..1000]

scoreboard players reset #temp exp.mech_left_id
scoreboard players reset #temp exp.mech_right_id
execute store result score #temp exp.mech_left_id run data get entity @s SelectedItem.components.minecraft:custom_data.mech_left_id
execute store result score #temp exp.mech_right_id run data get entity @s SelectedItem.components.minecraft:custom_data.mech_right_id

# mount AI pilot
summon armor_stand ~ ~ ~ {Marker:1b,Tags:["exp.mech_pilot"]}
ride @e[type=armor_stand,tag=exp.mech_pilot,limit=1,sort=nearest] mount @e[type=cat,tag=exp.mech_seat,limit=1,sort=nearest]