summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Small:1b,Invisible:1b,Marker:1b,Tags:["exp.mod_drone","exp.drone1"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:123800}}]}
summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Small:1b,Invisible:1b,Marker:1b,Tags:["exp.mod_drone","exp.drone2"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:123800}}]}
summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Small:1b,Invisible:1b,Marker:1b,Tags:["exp.mod_drone","exp.drone3"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:123800}}]}
summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Small:1b,Invisible:1b,Marker:1b,Tags:["exp.mod_drone","exp.drone4"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:123800}}]}
summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Small:1b,Invisible:1b,Marker:1b,Tags:["exp.mod_drone","exp.drone5"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:123800}}]}

tp @e[type=minecraft:armor_stand,tag=exp.drone1,limit=1,sort=nearest] ^0.5 ^ ^ ~-90 ~
tp @e[type=minecraft:armor_stand,tag=exp.drone2,limit=1,sort=nearest] ^-0.5 ^ ^ ~90 ~
tp @e[type=minecraft:armor_stand,tag=exp.drone3,limit=1,sort=nearest] ^0.5 ^ ^ ~45 ~
tp @e[type=minecraft:armor_stand,tag=exp.drone4,limit=1,sort=nearest] ^-0.5 ^ ^ ~-45 ~
tp @e[type=minecraft:armor_stand,tag=exp.drone5,limit=1,sort=nearest] ^ ^ ^0.5 ~ ~
