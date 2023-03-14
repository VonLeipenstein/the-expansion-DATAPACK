# Create a default array.
data modify entity @s ArmorItems[3].tag.portal_array set value [{matches:false,facing:0f,dim:-1,core1:0,core2:0,core3:0,core4:0,core5:0,x:0,y:0,z:0,bit0:false,bit1:false,bit2:false,bit3:false,bit4:false,bit5:false,bit6:false,bit7:false,bit8:false,bit9:false,bit10:false,bit11:false}]

# Store the rotation in the array.
data modify entity @s ArmorItems[3].tag.portal_array[0].facing set from entity @s Rotation[0]

# Store the dimension in the array.
execute if predicate expansion:dimension/overworld run data modify entity @s ArmorItems[3].tag.portal_array[0].dim set value 0
execute if predicate expansion:dimension/moon run data modify entity @s ArmorItems[3].tag.portal_array[0].dim set value 1
execute if predicate expansion:dimension/mars run data modify entity @s ArmorItems[3].tag.portal_array[0].dim set value 2
execute if predicate expansion:dimension/venus run data modify entity @s ArmorItems[3].tag.portal_array[0].dim set value 3
#execute if predicate expansion:dimension/mercury run data modify entity @s ArmorItems[3].tag.portal_array[0].dim set value 4
execute if predicate expansion:dimension/jupiter run data modify entity @s ArmorItems[3].tag.portal_array[0].dim set value 5
execute if predicate expansion:dimension/europa run data modify entity @s ArmorItems[3].tag.portal_array[0].dim set value 6
execute if predicate expansion:dimension/space run data modify entity @s ArmorItems[3].tag.portal_array[0].dim set value 7
execute if predicate expansion:dimension/asteroids run data modify entity @s ArmorItems[3].tag.portal_array[0].dim set value 8

# Store the portal ID in the array.
execute store result entity @s ArmorItems[3].tag.portal_array[0].portal_id double 1 run scoreboard players get @s exp.counter_1

# Convert the ID to binary code and store it in the array.
scoreboard players operation input exp.value = @s exp.counter_1
function expansion:contraptions/portal/activation/dec_to_bin
execute store result entity @s ArmorItems[3].tag.portal_array[0].bit0 byte 1 run scoreboard players get .bit0 exp.value
execute store result entity @s ArmorItems[3].tag.portal_array[0].bit1 byte 1 run scoreboard players get .bit1 exp.value
execute store result entity @s ArmorItems[3].tag.portal_array[0].bit2 byte 1 run scoreboard players get .bit2 exp.value
execute store result entity @s ArmorItems[3].tag.portal_array[0].bit3 byte 1 run scoreboard players get .bit3 exp.value
execute store result entity @s ArmorItems[3].tag.portal_array[0].bit4 byte 1 run scoreboard players get .bit4 exp.value
execute store result entity @s ArmorItems[3].tag.portal_array[0].bit5 byte 1 run scoreboard players get .bit5 exp.value
execute store result entity @s ArmorItems[3].tag.portal_array[0].bit6 byte 1 run scoreboard players get .bit6 exp.value
execute store result entity @s ArmorItems[3].tag.portal_array[0].bit7 byte 1 run scoreboard players get .bit7 exp.value
execute store result entity @s ArmorItems[3].tag.portal_array[0].bit8 byte 1 run scoreboard players get .bit8 exp.value
execute store result entity @s ArmorItems[3].tag.portal_array[0].bit9 byte 1 run scoreboard players get .bit9 exp.value
execute store result entity @s ArmorItems[3].tag.portal_array[0].bit10 byte 1 run scoreboard players get .bit10 exp.value
execute store result entity @s ArmorItems[3].tag.portal_array[0].bit11 byte 1 run scoreboard players get .bit11 exp.value

# Store the color code in the array.
execute store result entity @s ArmorItems[3].tag.portal_array[0].core1 byte 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=exp.port_1,limit=1,sort=nearest] exp.hold_value_alt
execute store result entity @s ArmorItems[3].tag.portal_array[0].core2 byte 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=exp.port_2,limit=1,sort=nearest] exp.hold_value_alt
execute store result entity @s ArmorItems[3].tag.portal_array[0].core3 byte 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=exp.port_3,limit=1,sort=nearest] exp.hold_value_alt
execute store result entity @s ArmorItems[3].tag.portal_array[0].core4 byte 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=exp.port_4,limit=1,sort=nearest] exp.hold_value_alt
execute store result entity @s ArmorItems[3].tag.portal_array[0].core5 byte 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=exp.port_5,limit=1,sort=nearest] exp.hold_value_alt

# Store the position in the array.
execute store result entity @s ArmorItems[3].tag.portal_array[0].x double 1 run data get entity @s Pos[0]
execute store result entity @s ArmorItems[3].tag.portal_array[0].y double 1 run data get entity @s Pos[1]
execute store result entity @s ArmorItems[3].tag.portal_array[0].z double 1 run data get entity @s Pos[2]