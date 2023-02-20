execute if score @s exp.cooldown matches 20 run data modify block ~ ~ ~ Items[{Slot:26b}].tag.CustomModelData set value 124406

execute if score @s exp.cooldown matches 12 run data modify block ~ ~ ~ Items[{Slot:26b}].tag.CustomModelData set value 124404

execute if score @s exp.cooldown matches 8 run data modify block ~ ~ ~ Items[{Slot:26b}].tag.CustomModelData set value 124406

execute if score @s exp.cooldown matches 1 run data modify block ~ ~ ~ Items[{Slot:26b}].tag.CustomModelData set value 124404

scoreboard players remove @s exp.cooldown 1
