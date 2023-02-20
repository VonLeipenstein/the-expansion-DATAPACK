execute store result score input exp.value run data get entity @s ArmorItems[3].tag.portal_array[0].portal_id
function expansion:contraptions/portal/activation/dec_to_bin

data modify storage expansion:portal portal_out[].matches set value 1b

execute if score .bit0 exp.value matches 0 if data storage expansion:portal portal_out[{bit0:1b}] run data modify storage expansion:portal portal_out[{bit0:1b}].matches set value 0b
execute if score .bit0 exp.value matches 1 if data storage expansion:portal portal_out[{bit0:0b}] run data modify storage expansion:portal portal_out[{bit0:0b}].matches set value 0b

execute if score .bit1 exp.value matches 0 if data storage expansion:portal portal_out[{bit1:1b}] run data modify storage expansion:portal portal_out[{bit1:1b}].matches set value 0b
execute if score .bit1 exp.value matches 1 if data storage expansion:portal portal_out[{bit1:0b}] run data modify storage expansion:portal portal_out[{bit1:0b}].matches set value 0b

execute if score .bit2 exp.value matches 0 if data storage expansion:portal portal_out[{bit2:1b}] run data modify storage expansion:portal portal_out[{bit2:1b}].matches set value 0b
execute if score .bit2 exp.value matches 1 if data storage expansion:portal portal_out[{bit2:0b}] run data modify storage expansion:portal portal_out[{bit2:0b}].matches set value 0b

execute if score .bit3 exp.value matches 0 if data storage expansion:portal portal_out[{bit3:1b}] run data modify storage expansion:portal portal_out[{bit3:1b}].matches set value 0b
execute if score .bit3 exp.value matches 1 if data storage expansion:portal portal_out[{bit3:0b}] run data modify storage expansion:portal portal_out[{bit3:0b}].matches set value 0b

execute if score .bit4 exp.value matches 0 if data storage expansion:portal portal_out[{bit4:1b}] run data modify storage expansion:portal portal_out[{bit4:1b}].matches set value 0b
execute if score .bit4 exp.value matches 1 if data storage expansion:portal portal_out[{bit4:0b}] run data modify storage expansion:portal portal_out[{bit4:0b}].matches set value 0b

execute if score .bit5 exp.value matches 0 if data storage expansion:portal portal_out[{bit5:1b}] run data modify storage expansion:portal portal_out[{bit5:1b}].matches set value 0b
execute if score .bit5 exp.value matches 1 if data storage expansion:portal portal_out[{bit5:0b}] run data modify storage expansion:portal portal_out[{bit5:0b}].matches set value 0b

execute if score .bit6 exp.value matches 0 if data storage expansion:portal portal_out[{bit6:1b}] run data modify storage expansion:portal portal_out[{bit6:1b}].matches set value 0b
execute if score .bit6 exp.value matches 1 if data storage expansion:portal portal_out[{bit6:0b}] run data modify storage expansion:portal portal_out[{bit6:0b}].matches set value 0b

execute if score .bit7 exp.value matches 0 if data storage expansion:portal portal_out[{bit7:1b}] run data modify storage expansion:portal portal_out[{bit7:1b}].matches set value 0b
execute if score .bit7 exp.value matches 1 if data storage expansion:portal portal_out[{bit7:0b}] run data modify storage expansion:portal portal_out[{bit7:0b}].matches set value 0b

execute if score .bit8 exp.value matches 0 if data storage expansion:portal portal_out[{bit8:1b}] run data modify storage expansion:portal portal_out[{bit8:1b}].matches set value 0b
execute if score .bit8 exp.value matches 1 if data storage expansion:portal portal_out[{bit8:0b}] run data modify storage expansion:portal portal_out[{bit8:0b}].matches set value 0b

execute if score .bit9 exp.value matches 0 if data storage expansion:portal portal_out[{bit9:1b}] run data modify storage expansion:portal portal_out[{bit9:1b}].matches set value 0b
execute if score .bit9 exp.value matches 1 if data storage expansion:portal portal_out[{bit9:0b}] run data modify storage expansion:portal portal_out[{bit9:0b}].matches set value 0b

execute if score .bit10 exp.value matches 0 if data storage expansion:portal portal_out[{bit10:1b}] run data modify storage expansion:portal portal_out[{bit10:1b}].matches set value 0b
execute if score .bit10 exp.value matches 1 if data storage expansion:portal portal_out[{bit10:0b}] run data modify storage expansion:portal portal_out[{bit10:0b}].matches set value 0b

execute if score .bit11 exp.value matches 0 if data storage expansion:portal portal_out[{bit11:1b}] run data modify storage expansion:portal portal_out[{bit11:1b}].matches set value 0b
execute if score .bit11 exp.value matches 1 if data storage expansion:portal portal_out[{bit11:0b}] run data modify storage expansion:portal portal_out[{bit11:0b}].matches set value 0b

data remove storage expansion:portal portal_out[{matches:1b}]