# >>> generated function callers >>>
# Callers for expansion:blocks/portal/activation/create_array
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/portal/activation/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Create a default array.
data modify storage expansion:portal init.portal_array set value [{matches:false,scale:1,facing:0f,dim:-1,core1:0,core2:0,core3:0,core4:0,core5:0,x:0.0d,dy:0.0d,y:0.0d,z:0.0d,bit0:false,bit1:false,bit2:false,bit3:false,bit4:false,bit5:false,bit6:false,bit7:false,bit8:false,bit9:false,bit10:false,bit11:false}]

# Store the rotation in the array.
data modify storage expansion:portal init.portal_array[0].facing set from entity @s Rotation[0]

# Store the dimension in the array.
data modify storage expansion:portal init.portal_array[0].dim set value 0
execute if predicate expansion:dimension/moon run data modify storage expansion:portal init.portal_array[0].dim set value 1
execute if predicate expansion:dimension/mars run data modify storage expansion:portal init.portal_array[0].dim set value 2
execute if predicate expansion:dimension/venus run data modify storage expansion:portal init.portal_array[0].dim set value 3
#execute if predicate expansion:dimension/mercury run data modify storage expansion:portal init.portal_array[0].dim set value 4
execute if predicate expansion:dimension/jupiter run data modify storage expansion:portal init.portal_array[0].dim set value 5
execute if predicate expansion:dimension/europa run data modify storage expansion:portal init.portal_array[0].dim set value 6
execute if predicate expansion:dimension/storage run data modify storage expansion:portal init.portal_array[0].dim set value 7
execute if predicate expansion:dimension/space run data modify storage expansion:portal init.portal_array[0].dim set value 8
execute if predicate expansion:dimension/asteroids run data modify storage expansion:portal init.portal_array[0].dim set value 9

# store dimension scale, default is one
execute if predicate expansion:dimension/scale_8 run data modify storage expansion:portal init.portal_array[0].scale set value 8

# Store the portal ID in the array.
execute store result storage expansion:portal init.portal_array[0].portal_id double 1 run scoreboard players get @s exp.counter_1

# Convert the ID to binary and store it in the array.
scoreboard players operation input exp.value = @s exp.counter_1
function expansion:blocks/portal/activation/dec_to_bin
execute store result storage expansion:portal init.portal_array[0].bit0 byte 1 run scoreboard players get .bit0 exp.value
execute store result storage expansion:portal init.portal_array[0].bit1 byte 1 run scoreboard players get .bit1 exp.value
execute store result storage expansion:portal init.portal_array[0].bit2 byte 1 run scoreboard players get .bit2 exp.value
execute store result storage expansion:portal init.portal_array[0].bit3 byte 1 run scoreboard players get .bit3 exp.value
execute store result storage expansion:portal init.portal_array[0].bit4 byte 1 run scoreboard players get .bit4 exp.value
execute store result storage expansion:portal init.portal_array[0].bit5 byte 1 run scoreboard players get .bit5 exp.value
execute store result storage expansion:portal init.portal_array[0].bit6 byte 1 run scoreboard players get .bit6 exp.value
execute store result storage expansion:portal init.portal_array[0].bit7 byte 1 run scoreboard players get .bit7 exp.value
execute store result storage expansion:portal init.portal_array[0].bit8 byte 1 run scoreboard players get .bit8 exp.value
execute store result storage expansion:portal init.portal_array[0].bit9 byte 1 run scoreboard players get .bit9 exp.value
execute store result storage expansion:portal init.portal_array[0].bit10 byte 1 run scoreboard players get .bit10 exp.value
execute store result storage expansion:portal init.portal_array[0].bit11 byte 1 run scoreboard players get .bit11 exp.value

# Store the color code in the array.
execute store result storage expansion:portal init.portal_array[0].core1 byte 1 on passengers if entity @s[tag=exp.port_1] run scoreboard players get @s exp.hold_value_alt
execute store result storage expansion:portal init.portal_array[0].core2 byte 1 on passengers if entity @s[tag=exp.port_2] run scoreboard players get @s exp.hold_value_alt
execute store result storage expansion:portal init.portal_array[0].core3 byte 1 on passengers if entity @s[tag=exp.port_3] run scoreboard players get @s exp.hold_value_alt
execute store result storage expansion:portal init.portal_array[0].core4 byte 1 on passengers if entity @s[tag=exp.port_4] run scoreboard players get @s exp.hold_value_alt
execute store result storage expansion:portal init.portal_array[0].core5 byte 1 on passengers if entity @s[tag=exp.port_5] run scoreboard players get @s exp.hold_value_alt

# Store the position in the array.
execute store result score @s exp.dy run data get entity @s Pos[1] 100
execute store result storage expansion:portal init.portal_array[0].Pos.y double 0.01 run scoreboard players get @s exp.dy
scoreboard players add @s exp.dy 115
execute store result storage expansion:portal init.portal_array[0].Pos.dy double 0.01 run scoreboard players get @s exp.dy
execute store result storage expansion:portal init.portal_array[0].Pos.x double 0.01 run data get entity @s Pos[0] 100
execute store result storage expansion:portal init.portal_array[0].Pos.z double 0.01 run data get entity @s Pos[2] 100

# copy the storage to the entity
data modify entity @s item.components."minecraft:custom_data".portal_array set from storage expansion:portal init.portal_array

# copy the temp array to a permanent one
data modify storage expansion:portal portal_array append from storage expansion:portal init.portal_array[]

# clear the storage
data remove storage expansion:portal init.portal_array
