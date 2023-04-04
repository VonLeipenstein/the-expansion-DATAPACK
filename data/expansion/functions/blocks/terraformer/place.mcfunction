summon minecraft:armor_stand ^ ^ ^ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["exp.terraformer","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012301}}]}
summon minecraft:armor_stand ^ ^ ^ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["exp.shield_generator","exp.block","smithed.block"]}

setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"translate":"exp_blocks_terraformer_name","color":"dark_grey"}'} replace

scoreboard players set @e[type=minecraft:armor_stand,tag=exp.shield_generator,limit=1,sort=nearest] exp.counter_1 0
scoreboard players set @e[type=minecraft:armor_stand,tag=exp.shield_generator,limit=1,sort=nearest] exp.counter_2 1
scoreboard players set @e[type=minecraft:armor_stand,tag=exp.shield_generator,limit=1,sort=nearest] exp.bool 0
execute as @e[type=minecraft:armor_stand,tag=exp.terraformer,limit=1,sort=nearest] run function expansion:blocks/terraformer/gui