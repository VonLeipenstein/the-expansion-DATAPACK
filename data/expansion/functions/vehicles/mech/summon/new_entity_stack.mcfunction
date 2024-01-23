#execute if entity @s[y_rotation=-135.1..-45] run summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Small:0b,Invisible:0b,DisabledSlots:2039583,Invulnerable:1b,Rotation:[0f,0f],Tags:["exp.mech","exp.vehicle","smithed.block"],Passengers:[{id:"minecraft:item_display",Tags:["exp.mech_display"],item_display:"head",Passengers:[{id:"minecraft:interaction",Tags:["exp.mech_rcdet","smithed.block"],height:0.5f,response:0b}]}]}
#execute if entity @s[y_rotation=45.1..135] run summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Small:0b,Invisible:0b,DisabledSlots:2039583,Invulnerable:1b,Rotation:[180f,0f],Tags:["exp.mech","exp.vehicle","smithed.block"],Passengers:[{id:"minecraft:item_display",Tags:["exp.mech_display"],item_display:"head",Passengers:[{id:"minecraft:interaction",Tags:["exp.mech_rcdet","smithed.block"],height:0.5f,response:0b}]}]}
#execute if entity @s[y_rotation=-45..45] run summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Small:0b,Invisible:0b,DisabledSlots:2039583,Invulnerable:1b,Rotation:[90f,0f],Tags:["exp.mech","exp.vehicle","smithed.block"],Passengers:[{id:"minecraft:item_display",Tags:["exp.mech_display"],item_display:"head",Passengers:[{id:"minecraft:interaction",Tags:["exp.mech_rcdet","smithed.block"],height:0.5f,response:0b}]}]}

summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Small:0b,Invisible:0b,DisabledSlots:2039583,Invulnerable:1b,Rotation:[270f,0f],Tags:["exp.mech","exp.new_vehicle","exp.vehicle","exp.moddable_vehicle","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:124401}}],Passengers:[{id:"minecraft:cat",Tags:["exp.mech_seat"],NoAI:1b,Silent:1b,Invulnerable:1b},{id:"minecraft:interaction",Tags:["exp.mech_rcdet","smithed.block"],width:2,height:2f,response:0b}]}
#if entity @s[y_rotation=135.1..-135]

# summon the animated java rigs
execute positioned ~ ~1.48 ~ rotated 0 0 run function animated_java:mech_legs/summon
execute positioned ~ ~1.48 ~ rotated 0 0 run function animated_java:mech_torso/summon

# mount the animated java rigs to the entity stack
ride @e[type=item_display,tag=aj.mech_legs.root,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.mech,limit=1,sort=nearest]
ride @e[type=item_display,tag=aj.mech_torso.root,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.mech,limit=1,sort=nearest]